// per vertex/per fragment shading of sphere model (Gouraud vs Phong)

// use key 'l' to switch between shading and wireframe rendering
// use arrows for rotation
// use z and w to zoom in and out

#include "Angel.h"

const int NumTimesToSubdivide = 5;
const int NumTriangles        = 4096;  // (4 faces)^(NumTimesToSubdivide + 1)
const int NumVertices         = 3 * NumTriangles;

typedef vec4 point4;
typedef vec4 color4;

point4 points[NumVertices];
vec3   normals[NumVertices];

enum {Xaxis = 0, Yaxis = 1, Zaxis = 2, NumAxes = 3};
GLfloat Theta[NumAxes] = {0.0, 0.0, 0.0};

// Model-view and projection matrices uniform location
GLuint  ModelView, Projection, Lighting;

bool lighting = true; //enable lighting
GLfloat scaleFactor = 1.0;

//----------------------------------------------------------------------------

int Index = 0;

void
triangle( const point4& a, const point4& b, const point4& c )
{
    //normal vector is computed per vertex
    
    vec3 norm = normalize(vec3 (a.x,a.y,a.z));
    normals[Index] = vec3(norm.x, norm.y, norm.z);  points[Index] = a;  Index++;
    norm = normalize(vec3 (b.x,b.y,b.z));
    normals[Index] = vec3(norm.x, norm.y, norm.z);   points[Index] = b;  Index++;
    norm = normalize(vec3 (c.x,c.y,c.z));
    normals[Index] = vec3(norm.x, norm.y, norm.z);   points[Index] = c;  Index++;
}
//----------------------------------------------------------------------------

point4
unit( const point4& p )
{
    float len = p.x*p.x + p.y*p.y + p.z*p.z;
    
    point4 t;
    if ( len > DivideByZeroTolerance ) {
        t = p / sqrt(len);
        t.w = 1.0;
    }
    
    return t;
}

void
divide_triangle( const point4& a, const point4& b,
                const point4& c, int count )
{
    if ( count > 0 ) {
        point4 v1 = unit( a + b );
        point4 v2 = unit( a + c );
        point4 v3 = unit( b + c );
        divide_triangle(  a, v1, v2, count - 1 );
        divide_triangle(  c, v2, v3, count - 1 );
        divide_triangle(  b, v3, v1, count - 1 );
        divide_triangle( v1, v3, v2, count - 1 );
    }
    else {
        triangle( a, b, c );
    }
}

void
tetrahedron( int count )
{
    point4 v[4] = {
        vec4( 0.0, 0.0, 1.0, 1.0 ),
        vec4( 0.0, 0.942809, -0.333333, 1.0 ),
        vec4( -0.816497, -0.471405, -0.333333, 1.0 ),
        vec4( 0.816497, -0.471405, -0.333333, 1.0 )
    };
    
    divide_triangle( v[0], v[1], v[2], count );
    divide_triangle( v[3], v[2], v[1], count );
    divide_triangle( v[0], v[3], v[1], count );
    divide_triangle( v[0], v[2], v[3], count );
}

//----------------------------------------------------------------------------

// OpenGL initialization
void
init()
{
    // Subdivide a tetrahedron into a sphere
    tetrahedron( NumTimesToSubdivide );
    
    // Create a vertex array object
    GLuint vao;
    glGenVertexArrays( 1, &vao );
    glBindVertexArray( vao );
    
    // Create and initialize a buffer object
    GLuint buffer;
    glGenBuffers( 1, &buffer );
    glBindBuffer( GL_ARRAY_BUFFER, buffer );
    glBufferData( GL_ARRAY_BUFFER, sizeof(points) + sizeof(normals),
                 NULL, GL_STATIC_DRAW );
    glBufferSubData( GL_ARRAY_BUFFER, 0, sizeof(points), points );
    glBufferSubData( GL_ARRAY_BUFFER, sizeof(points),
                    sizeof(normals), normals );
    
    // Load shaders and use the resulting shader program
    GLuint program = InitShader( "vshader.glsl", "fshader.glsl" );
    //use vshader_phong.glsl, fshader_phong.glsl for phong shading
    //and then zoom on a single triangle to be able to see the difference from Gouraud shading
    glUseProgram( program);
	
    // set up vertex arrays
    GLuint vPosition = glGetAttribLocation( program, "vPosition" );
    glEnableVertexAttribArray( vPosition );
    glVertexAttribPointer( vPosition, 4, GL_FLOAT, GL_FALSE, 0,
                          BUFFER_OFFSET(0) );
    
    GLuint vNormal = glGetAttribLocation( program, "vNormal" ); 
    glEnableVertexAttribArray( vNormal );
    glVertexAttribPointer( vNormal, 3, GL_FLOAT, GL_FALSE, 0,
                          BUFFER_OFFSET(sizeof(points)) );
    
    // Initialize shader lighting parameters
    point4 light_position( 0.0, 0.0, 2.0, 1.0 );
    color4 light_ambient( 0.2, 0.2, 0.2, 1.0 );
    color4 light_diffuse( 1.0, 1.0, 1.0, 1.0 );
    color4 light_specular( 1.0, 1.0, 1.0, 1.0 );
    
    color4 material_ambient( 1.0, 0.0, 1.0, 1.0 );
    color4 material_diffuse( 1.0, 0.8, 0.0, 1.0 );
    color4 material_specular( 1.0, 0.0, 1.0, 1.0 );
    float  material_shininess = 15.0;
    
    color4 ambient_product = light_ambient * material_ambient;
    color4 diffuse_product = light_diffuse * material_diffuse;
    color4 specular_product = light_specular * material_specular;
    
    glUniform4fv( glGetUniformLocation(program, "AmbientProduct"),
                 1, ambient_product );
    glUniform4fv( glGetUniformLocation(program, "DiffuseProduct"),
                 1, diffuse_product );
    glUniform4fv( glGetUniformLocation(program, "SpecularProduct"),
                 1, specular_product );
	
    glUniform4fv( glGetUniformLocation(program, "LightPosition"),
                 1, light_position );
    
    glUniform1f( glGetUniformLocation(program, "Shininess"),
                material_shininess );
    
    
    // Retrieve transformation uniform variable locations
    ModelView = glGetUniformLocation( program, "ModelView" );
    Projection = glGetUniformLocation( program, "Projection" );
    
    mat4 projection = Ortho( -2.0, 2.0, -2.0, 2.0, -2.0, 2.0 );
    glUniformMatrix4fv( Projection, 1, GL_TRUE, projection );
    
    glEnable( GL_DEPTH_TEST );
    glEnable(GL_CULL_FACE); //to discard invisible faces from rendering
    
    glClearColor( 1.0, 1.0, 1.0, 1.0 ); /* white background */
}

//----------------------------------------------------------------------------

void
display( void )
{
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    
    point4 at( 0.0, 0.0, 0.0, 1.0 );
    point4 eye( 0.0, 0.0, 2.0, 1.0 );
    vec4   up( 0.0, 1.0, 0.0, 0.0 );
    
    mat4 model_view = LookAt( eye, at, up );
    model_view = model_view * Scale(scaleFactor, scaleFactor, scaleFactor) * ( RotateX( Theta[Xaxis] ) *
                        RotateY( Theta[Yaxis] ) *
                        RotateZ( Theta[Zaxis] ) );
    
    glUniformMatrix4fv( ModelView, 1, GL_TRUE, model_view );
    
    if (lighting) glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    else glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    
    glDrawArrays( GL_TRIANGLES, 0, NumVertices );
    glFlush();
}

//----------------------------------------------------------------------------

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    switch( key ) {
        case GLFW_KEY_ESCAPE: case GLFW_KEY_Q:
            exit( EXIT_SUCCESS );
            break;
            // "Zoom-in" to the object
        case GLFW_KEY_Z:
            scaleFactor *= 1.1;
            break;
            // "Zoom-out" from the object
        case GLFW_KEY_W:
            scaleFactor *= 0.9;
            break;
        case GLFW_KEY_L:
            if (action == GLFW_PRESS)
            {
                if (lighting == true) lighting = false;
                else lighting = true;
            }
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


//----------------------------------------------------------------------------

void framebuffer_size_callback(GLFWwindow* window, int width, int height)

{
    glViewport( 0, 0, width, height );
    
    GLfloat left = -2.0, right = 2.0;
    GLfloat top = 2.0, bottom = -2.0;
    GLfloat zNear = -20.0, zFar = 20.0;
    
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
    
    GLFWwindow* window = glfwCreateWindow(1024, 1024, "Shading", NULL, NULL);
    glfwMakeContextCurrent(window);
    
    if (!window)
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }
    
    glfwSetKeyCallback(window, key_callback);
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
