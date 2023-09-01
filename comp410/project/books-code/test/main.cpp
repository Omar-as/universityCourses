/******************************************************************************/

/***********/
/* Imports */
/***********/

/* STD */

#include <iostream>

using namespace std;

/* Custom Imports */

#include "custom/glfw.cpp"

/******************************************************************************/

void key_callback (GLFWwindow* window, int key, int scancode, int action, int mods);

/*************/
/* Constants */
/*************/

// Window constants
#define WINDOW_WIDTH  800
#define WINDOW_HEIGHT 800
#define WINDOW_TITLE  "Rubik's Cube"

/******************************************************************************/

/* void window_close_callback(GLFWwindow* window) */
/* { */
/*     if (!time_to_close) */
/*         glfwSetWindowShouldClose(window, GLFW_FALSE); */
/* } */

int main() {

	glfwInit();
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);


	/* Create window */
	auto window = custom::glfw_create_window(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE);
	glfwMakeContextCurrent(window);

	// Call-Backs
	glfwSetKeyCallback(window, key_callback);

	/* glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT); */

	while (!glfwWindowShouldClose(window))
	{
		/* glfwSetWindowCloseCallback(window, window_close_callback); */
		
		// swap buffers and poll IO events
		glfwSwapBuffers(window);
		glfwPollEvents();    
	}

	glfwTerminate();
	return EXIT_SUCCESS;
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
	// Terminates the program with Q
    if (key == GLFW_KEY_Q && action == GLFW_PRESS){
        exit(EXIT_SUCCESS);
	}
}
