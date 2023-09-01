// rotating cube with texture objects 
// two different textures (switch between via key '1' and '2'
// switch to color mode via key 't'
// rotate with keys special keys and also key 'y'
// can zoom in and out with 'z' and 'Z'

#include "Angel.h"

const int  NumTriangles = 12; // (6 faces)(2 triangles/face)
const int  NumVertices  = 3 * NumTriangles;
const int  TextureSize  = 64;

typedef vec4 point4;
typedef vec4 color4;

// Texture objects and storage for texture image
GLuint textures[2];

GLubyte image[TextureSize][TextureSize][3];
GLubyte image2[TextureSize][TextureSize][3];

// Vertex data arrays
point4  points[NumVertices];
color4  quad_colors[NumVertices];
vec2    tex_coords[NumVertices];

// Array of rotation angles (in degrees) for each coordinate axis
enum { Xaxis = 0, Yaxis = 1, Zaxis = 2, NumAxes = 3 };
int      Axis = Xaxis;
GLfloat  Theta[NumAxes] = { 0.0, 0.0, 0.0 };
GLfloat scaleFactor = 1.0;

// Model-view and projection matrices uniform location
GLuint ModelView, Projection;

bool textureFlag = true; //enable texture mapping
GLuint  TextureFlagLoc; // texture flag uniform location

//----------------------------------------------------------------------------

int Index = 0;

void
quad( int a, int b, int c, int d )
{
    point4 vertices[8] = {
	point4( -0.5, -0.5,  0.5, 1.0 ),
	point4( -0.5,  0.5,  0.5, 1.0 ),
	point4(  0.5,  0.5,  0.5, 1.0 ),
	point4(  0.5, -0.5,  0.5, 1.0 ),
	point4( -0.5, -0.5, -0.5, 1.0 ),
	point4( -0.5,  0.5, -0.5, 1.0 ),
	point4(  0.5,  0.5, -0.5, 1.0 ),
	point4(  0.5, -0.5, -0.5, 1.0 )
    };

    color4 colors[8] = {
	color4( 0.0, 0.0, 0.0, 1.0 ),  // black
	color4( 1.0, 0.0, 0.0, 1.0 ),  // red
	color4( 1.0, 1.0, 0.0, 1.0 ),  // yellow
	color4( 0.0, 1.0, 0.0, 1.0 ),  // green
	color4( 0.0, 0.0, 1.0, 1.0 ),  // blue
	color4( 1.0, 0.0, 1.0, 1.0 ),  // magenta
	color4( 0.5, 0.5, 0.5, 1.0 ),  // white
	color4( 1.0, 1.0, 1.0, 1.0 )   // cyan
    };

    quad_colors[Index] = colors[a];
    points[Index] = vertices[a];
    tex_coords[Index] = vec2( 0.0, 0.0 );
    Index++;
    
    quad_colors[Index] = colors[a];
    points[Index] = vertices[b];
    tex_coords[Index] = vec2( 0.0, 1.0 );
    Index++;
    
    quad_colors[Index] = colors[a];
    points[Index] = vertices[c];
    tex_coords[Index] = vec2( 1.0, 1.0 );
    Index++;
    
    quad_colors[Index] = colors[a];
    points[Index] = vertices[a];
    tex_coords[Index] = vec2( 0.0, 0.0 );
    Index++;
    
    quad_colors[Index] = colors[a];
    points[Index] = vertices[c];
    tex_coords[Index] = vec2( 1.0, 1.0 );
    Index++;
    
    quad_colors[Index] = colors[a];
    points[Index] = vertices[d];
    tex_coords[Index] = vec2( 1.0, 0.0 );
    Index++;
}

//----------------------------------------------------------------------------

void
colorcube()
{
    quad( 1, 0, 3, 2 );
    quad( 2, 3, 7, 6 );
    quad( 3, 0, 4, 7 );
    quad( 6, 5, 1, 2 );
    quad( 4, 5, 6, 7 );
    quad( 5, 4, 0, 1 );
}

//----------------------------------------------------------------------------

void
init()
{
    colorcube();

    // Create a checkerboard pattern
    for ( int i = 0; i < 64; i++ ) {
        for ( int j = 0; j < 64; j++ ) {
            GLubyte c = (((i & 0x8) == 0) ^ ((j & 0x8)  == 0)) * 255;
            image[i][j][0]  = c;
            image[i][j][1]  = c;
            image[i][j][2]  = c;
            image2[i][j][0] = 0; // you can change the color of the second texture pattern as you like
            image2[i][j][1] = c;
            image2[i][j][2] = c;
        }
    }

    // Initialize texture objects
    glGenTextures( 2, textures );

    glBindTexture( GL_TEXTURE_2D, textures[0] );
    glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, TextureSize, TextureSize, 0,
		  GL_RGB, GL_UNSIGNED_BYTE, image );
    glGenerateMipmap(GL_TEXTURE_2D);
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR_MIPMAP_LINEAR); //try here different alternatives
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR); //try here different alternatives

    glBindTexture( GL_TEXTURE_2D, textures[1] );
    glTexImage2D( GL_TEXTURE_2D, 0, GL_RGB, TextureSize, TextureSize, 0,
		  GL_RGB, GL_UNSIGNED_BYTE, image2 );
    //glGenerateMipmap(GL_TEXTURE_2D); // try also activating mipmaps for the second texture object
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST );
    glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST );
    
    glBindTexture( GL_TEXTURE_2D, textures[0] ); //set current texture
    
    // Create a vertex array object
    GLuint vao;
    glGenVertexArrays( 1, &vao );
    glBindVertexArray( vao );

    // Create and initialize a buffer object
    GLuint buffer;
    glGenBuffers( 1, &buffer );
    glBindBuffer( GL_ARRAY_BUFFER, buffer );
    glBufferData( GL_ARRAY_BUFFER,
		  sizeof(points) + sizeof(quad_colors) + sizeof(tex_coords),
		  NULL, GL_STATIC_DRAW );

    // Specify an offset to keep track of where we're placing data in our
    //   vertex array buffer.  We'll use the same technique when we
    //   associate the offsets with vertex attribute pointers.
    GLintptr offset = 0;
    glBufferSubData( GL_ARRAY_BUFFER, offset, sizeof(points), points );
    offset += sizeof(points);

    glBufferSubData( GL_ARRAY_BUFFER, offset, sizeof(quad_colors), quad_colors );
    offset += sizeof(quad_colors);
    
    glBufferSubData( GL_ARRAY_BUFFER, offset, sizeof(tex_coords), tex_coords );

    // Load shaders and use the resulting shader program
    GLuint program = InitShader( "vshader.glsl", "fshader.glsl" );
    glUseProgram( program );

    // set up vertex arrays
    offset = 0;
    GLuint vPosition = glGetAttribLocation( program, "vPosition" );
    glEnableVertexAttribArray( vPosition );
    glVertexAttribPointer( vPosition, 4, GL_FLOAT, GL_FALSE, 0,
			   BUFFER_OFFSET(offset) );
    offset += sizeof(points);

    GLuint vColor = glGetAttribLocation( program, "vColor" ); 
    glEnableVertexAttribArray( vColor );
    glVertexAttribPointer( vColor, 4, GL_FLOAT, GL_FALSE, 0,
			   BUFFER_OFFSET(offset) );
    offset += sizeof(quad_colors);

    GLuint vTexCoord = glGetAttribLocation( program, "vTexCoord" );
    glEnableVertexAttribArray( vTexCoord );
    glVertexAttribPointer( vTexCoord, 2, GL_FLOAT, GL_FALSE, 0,
			   BUFFER_OFFSET(offset) );
    
    ModelView = glGetUniformLocation(program, "ModelView");
	Projection = glGetUniformLocation(program, "Projection");

    
    TextureFlagLoc = glGetUniformLocation(program, "TextureFlag");
    glUniform1i( TextureFlagLoc, textureFlag );
    
    mat4 projection = Ortho( -1.0, 1.0, -1.0, 1.0, -1.0, 1.0 );
    glUniformMatrix4fv( Projection, 1, GL_TRUE, projection );

    glEnable( GL_DEPTH_TEST );
    glClearColor( 1.0, 1.0, 1.0, 1.0 );
}

void
display( void )
{
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

    mat4 model_view = (Scale(scaleFactor, scaleFactor, scaleFactor) *
					   RotateX( Theta[Xaxis] ) *
					   RotateY( Theta[Yaxis] ) *
					   RotateZ( Theta[Zaxis] ) );
	
	glUniformMatrix4fv( ModelView, 1, GL_TRUE, model_view );

    glDrawArrays( GL_TRIANGLES, 0, NumVertices );

    glFlush();
}

//----------------------------------------------------------------------------

void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
    if ( action == GLFW_PRESS ) {
        switch( button ) {
            case GLFW_MOUSE_BUTTON_RIGHT:    Axis = Xaxis;  break;
            case GLFW_MOUSE_BUTTON_MIDDLE:  Axis = Yaxis;  break;
            case GLFW_MOUSE_BUTTON_LEFT:   Axis = Zaxis;  break;
        }
    }
}
//----------------------------------------------------------------------------

// Reshape the application window, preserving the object aspect ratio
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport( 0, 0, width, height );
    
    GLfloat left = -1.0, right = 1.0;
    GLfloat top = 1.0, bottom = -1.0;
    GLfloat zNear = -1.0, zFar = 1.0;
    
    GLfloat aspect = GLfloat(width)/height;
    
    if ( aspect > 1.0 ) {
        left *= aspect;
        right *= aspect;
    }
    else {
        top /= aspect;
        bottom /= aspect;
    }
    
    mat4 projection = Ortho( left, right, bottom, top, zNear, zFar );
    glUniformMatrix4fv( Projection, 1, GL_TRUE, projection );
}

//----------------------------------------------------------------------------

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action == GLFW_PRESS){
        switch( key ) {
            case GLFW_KEY_ESCAPE: case GLFW_KEY_Q:
                exit( EXIT_SUCCESS );
                break;
            case GLFW_KEY_1:
                glBindTexture( GL_TEXTURE_2D, textures[0] );
                break;
                
            case GLFW_KEY_2:
                glBindTexture( GL_TEXTURE_2D, textures[1] );
                break;
            case GLFW_KEY_T:
                if (textureFlag == true) textureFlag = false;
                else textureFlag = true;
                glUniform1i( TextureFlagLoc, textureFlag );
                break;
                
            case GLFW_KEY_Y:
                Theta[Yaxis] -= 3.0;
                
                if (Theta[Yaxis] < -360.0){
                    Theta[Yaxis] += 360.0;
                }
                break;
                // "Zoom-in" to the object
            case GLFW_KEY_Z:
                scaleFactor *= 1.1;
                break;
                
                // "Zoom-out" from the object
            case GLFW_KEY_W:
                scaleFactor *= 0.9;
                break;
            case GLFW_KEY_UP:
                Theta[Xaxis] += 3.0;
                
                if (Theta[Xaxis] > 360.0){
                    Theta[Xaxis] -= 360.0;
                }
                break;
                
            case GLFW_KEY_DOWN:
                Theta[Xaxis] -= 3.0;
                
                if (Theta[Xaxis] < -360.0){
                    Theta[Xaxis] += 360.0;
                }
                break;
                
            case GLFW_KEY_LEFT:
                Theta[Zaxis] += 3.0;
                
                if (Theta[Zaxis] > 360.0){
                    Theta[Zaxis] -= 360.0;
                }
                break;
                
            case GLFW_KEY_RIGHT:
                Theta[Zaxis] -= 3.0;
                
                if (Theta[Zaxis] < -360.0){
                    Theta[Zaxis] += 360.0;
                }
                break;
            default:
                break;
        }
    }
}

//----------------------------------------------------------------------------

int
main( int argc, char **argv )
{
    if (!glfwInit())
            exit(EXIT_FAILURE);
    
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_RESIZABLE, GL_TRUE);
    
    GLFWwindow* window = glfwCreateWindow(512, 512, "Texture Cube", NULL, NULL);
    glfwMakeContextCurrent(window);
    
    if (!window)
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

    glfwSetKeyCallback(window, key_callback);
    glfwSetMouseButtonCallback(window, mouse_button_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    
    init();
    
    while (!glfwWindowShouldClose(window))
    {
        display();
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    
    glfwDestroyWindow(window);
    glfwTerminate();
    exit(EXIT_SUCCESS);
}
