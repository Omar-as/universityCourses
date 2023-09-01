#include <cmath>
#include <vector>
#include <iostream>

#include "scratch/glew.cpp"
#include "scratch/glfw.cpp"
#include "innitShadder.cpp"
#include "scratch/load_model.cpp"
#include "scratch/color.cpp"
#include "scratch/glDebug.cpp"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

using namespace std;

// ***********************************************************************************************
// Functions

void key_callback		(GLFWwindow* window, int key, int scancode, int action, int mods);
void mouse_button_callback	(GLFWwindow* window, int button, int action, int mods);


// ***********************************************************************************************
// Macros

#define WINDOW_WIDTH  800
#define WINDOW_HEIGHT 600
#define WINDOW_TITLE "Rubix Cube"

#define colorinput 	 "incolor"
#define transformVal "transform"

#define vshader "vshader.glsl"
#define fshader "fshader.glsl"

// ***********************************************************************************************

int main()
{

	// Initializes GLFW
	scratch::glfw_initializer();

	// Creates Window
	auto window = scratch::window(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE);
	glfwMakeContextCurrent(window);

    // scratch::gl_debug_enable();

    // // Call-Backs
	// glfwSetKeyCallback(window, key_callback);
	// glfwSetMouseButtonCallback(window, mouse_button_callback);

    // Initializes GLEW
	scratch::glew_initializer();


    // Binds the shaders and returns Program to use 
	auto program = innitshader::InitShader( vshader, fshader );
    glUseProgram( program );


    // // Set initial color
	int vertexColorLocation = glGetUniformLocation(program, colorinput);
	glUniform4f(vertexColorLocation, 0.9568627451f, 0.2627450980f, 0.2117647059f, 1.0f); // Red

    vector<GLfloat> square_vertices = {
		 0.5f,  0.5f, -0.5f,
		-0.5f,  0.5f, -0.5f,
		-0.5f, -0.5f, -0.5f,

		 0.5f, -0.5f, -0.5f,
		 0.5f,  0.5f, -0.5f,
		-0.5f, -0.5f, -0.5f
	};


    unsigned int VAO;
	unsigned int VBO;

	glGenVertexArrays(1, &VAO);
	glGenBuffers(1, &VBO);

	glBindVertexArray(VAO);

	glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, square_vertices.size() * sizeof(float), &square_vertices.front(), GL_STATIC_DRAW); //
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*) 0); //
	glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
	glEnable(GL_DEPTH_TEST);

	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    while (!glfwWindowShouldClose(window))
    {

        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glUseProgram(program);
        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 6);

        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        glPolygonOffset(1,1);
		glEnable(GL_POLYGON_OFFSET_FILL);
        glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
        
		// swap buffers and poll IO events
		glfwSwapBuffers(window);
		glfwPollEvents();
    }

    // Terminates the program
	glfwTerminate();
	return EXIT_SUCCESS;

}