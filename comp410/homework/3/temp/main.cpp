/******************************************************************************/

/***********/
/* Imports */
/***********/

/* STD */

#include <iostream>

using namespace std;

/* Custom Imports */

#include "custom/gl_load.cpp"    // Load OpenGL function pointers
#include "custom/gl_debug.cpp"   // Enable OpenGL errors/warnings
#include "custom/gl_shader.cpp"  // Compile/link OpenGL shaders
#include "custom/model.cpp"      // Model loading and utils
#include "custom/gl_helpers.cpp" // OpenGL helpers
#include "custom/glfw.cpp"       // Handle windowing operations and keyboard/mouse events

/* External */

// GLM
// OpenGL math library
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

/******************************************************************************/

/*************/
/* Constants */
/*************/

// OpenGL version
#define OPEN_GL_MAJOR_VERSION 3
#define OPEN_GL_MINOR_VERSION 3

// Shader locations
#define V_SHADER "shaders/v_shader.glsl"
#define F_SHADER "shaders/f_shader.glsl"

// Window constants
#define WINDOW_WIDTH  800
#define WINDOW_HEIGHT 800
#define WINDOW_TITLE  "ZERO NO GATO"

// State constants
#define STATE_PAUSE 0
#define STATE_RUN   1
#define STATE_RESET 2

// Simulation constants
#define GROUND         -1.00f
#define HIT_FACTOR      0.85f
#define REVERSE_FACTOR -1.00f

/******************************************************************************/

/********************/
/* Global Variables */
/********************/

// Current state
int g_state = STATE_RESET;

// Simulation variables
float g_x_pos;
float g_y_pos;
float g_x_vel;
float g_y_vel;
float g_y_acc;

// 3D Model
auto g_model = custom::model_tlst_load("models/sphere.tlst");

// Possible polygon modes
int g_mode_index = 0;
vector<GLenum> g_modes = { GL_LINE, GL_FILL };

// Program
GLuint program;

glm::vec3 center = { -0.75, 0.75, 0 };

/******************************************************************************/

/*************************/
/* Function Declarations */
/*************************/

// Callbacks
void win_resize_callback(GLFWwindow* window, int width, int height);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);

void update(custom::Model model);
void reset(custom::Model model);
void draw(custom::Model model);
void print_help();

/******************************************************************************/

int main() {
	// Initialize GLFW
	custom::glfw_init(OPEN_GL_MAJOR_VERSION, OPEN_GL_MINOR_VERSION);

	// Create window
	auto window = custom::glfw_create_window(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE);
	glfwMakeContextCurrent(window);

	// Load OpenGL function pointers
	custom::gl_load();
	// Enable depth test and culling
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_CULL_FACE);

	// Enable OpenGL Errors / Warnings
	custom::gl_debug_enable();

	// Callbacks
	glfwSetFramebufferSizeCallback(window, win_resize_callback);
	glfwSetKeyCallback(window, key_callback);
	glfwSetMouseButtonCallback(window, mouse_button_callback);

	// Load program
	program = custom::gl_make_program(V_SHADER, F_SHADER);
	glUseProgram(program);

	// Put model data in buffers
	glGenVertexArrays(1, &g_model.VAO);  
	glGenBuffers(1, &g_model.VBO); 
	glGenBuffers(1, &g_model.EBO);

	glBindVertexArray(g_model.VAO);

	glBindBuffer(GL_ARRAY_BUFFER, g_model.VBO);
	custom::glBufferDataV(GL_ARRAY_BUFFER, g_model.vertices, GL_STATIC_DRAW);

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, g_model.EBO);
	custom::glBufferDataV(GL_ELEMENT_ARRAY_BUFFER, g_model.triangles, GL_STATIC_DRAW);

	glVertexAttribPointer(0, VERTEX_3D_COMPONENTS, GL_FLOAT, GL_TRUE, 0, (void*) 0);
	glEnableVertexAttribArray(0);

	glm::vec4 light_position (0.0f, 0.0f, -1.0f, 0.0f);
	glm::vec4 light_ambient  (0.2f, 0.2f, 0.2f, 1.0f);
	glm::vec4 light_diffuse  (1.0f, 1.0f, 1.0f, 1.0f);
	glm::vec4 light_specular (1.0f, 1.0f, 1.0f, 1.0f);

	glm::vec4 material_ambient (1.0f, 0.0f, 1.0f, 1.0f);
	glm::vec4 material_diffuse (1.0f, 0.8f, 0.0f, 1.0f);
	glm::vec4 material_specular(1.0f, 0.8f, 0.0f, 1.0f);
	float material_shininess = 100.0f;

	auto ambient_product  = light_ambient  * material_ambient;
	auto diffuse_product  = light_diffuse  * material_diffuse;
	auto specular_product = light_specular * material_specular;

	glUniform3fv(glGetUniformLocation(program, "center"),          1, glm::value_ptr(center));
	glUniform4fv(glGetUniformLocation(program, "ambientProduct"),  1, glm::value_ptr(ambient_product));
	glUniform4fv(glGetUniformLocation(program, "diffuseProduct"),  1, glm::value_ptr(diffuse_product));
	glUniform4fv(glGetUniformLocation(program, "specularProduct"), 1, glm::value_ptr(specular_product));
	glUniform4fv(glGetUniformLocation(program, "lightPosition"),   1, glm::value_ptr(light_position));
	glUniform1f (glGetUniformLocation(program, "shininess"),		  material_shininess);

	// Render loop
	while(!glfwWindowShouldClose(window)) {
		if (g_state != STATE_PAUSE) {
			if (g_state == STATE_RUN) {
				update(g_model);
			} else {
				reset(g_model);
				g_state = STATE_PAUSE;
			}
		}
		draw(g_model);
		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	// Terminate
	glfwTerminate();
	return EXIT_SUCCESS;
}

/******************************************************************************/

/*************/
/* Callbacks */
/*************/

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	if (action != GLFW_PRESS) return;

	// Exit on Q or ESCAPE
	if (key == GLFW_KEY_Q || key == GLFW_KEY_ESCAPE) exit(EXIT_SUCCESS);
	// Pause/resume on SPACE
	else if (key == GLFW_KEY_SPACE) g_state = g_state == STATE_RUN ? STATE_PAUSE : STATE_RUN;
	// Reset position on i
	else if (key == GLFW_KEY_I) g_state = STATE_RESET;
	// Print help to standard output on h
	else if (key == GLFW_KEY_H) print_help();
}

void mouse_button_callback(GLFWwindow* window, int button, int action, int mods) {
	if (action != GLFW_PRESS) return;

	// Change polygon mode on left-click
	if (button == GLFW_MOUSE_BUTTON_LEFT) g_mode_index++;
}

// Resize while keeping aspect-ratio
void win_resize_callback(GLFWwindow* window, int width, int height) {
	// Use the entire window
	glViewport(0, 0, width, height); 

	// Construct projection matrix
	auto x = height < width ? (GLfloat) width / (GLfloat) height : 1.0f;
	auto y = width < height ? (GLfloat) height / (GLfloat) width : 1.0f;
	auto z = 1.0f;

	auto modelView = glm::ortho(-x, x, -y, y, -z, z);

	// Send projection matrix to GPU
	auto model_view_loc = glGetUniformLocation(program, "modelView");
	glUniformMatrix4fv(model_view_loc, 1, GL_FALSE, glm::value_ptr(modelView));
}

/******************************************************************************/

// Update object in the simulation
void update(custom::Model model) {
	g_y_vel += g_y_acc;

	g_x_pos += g_x_vel;
	g_y_pos += g_y_vel;

	auto transform = glm::mat4(1.0f);
	transform = glm::translate(transform, glm::vec3(g_x_pos, g_y_pos, 0.0f));

	auto new_min = transform * glm::vec4(1.0f, model.lowest_vertex, 1.0f, 1.0f);

	if (new_min.y < GROUND) {
		g_y_vel *= REVERSE_FACTOR * HIT_FACTOR;
		g_y_pos = GROUND - model.lowest_vertex;
	}

	auto transform_loc = glGetUniformLocation(program, "transform");
	glUniformMatrix4fv(transform_loc, 1, GL_FALSE, glm::value_ptr(transform));
}

// Reset object to initial position
void reset(custom::Model model) {
	g_x_pos = 0;
	g_y_pos = 0;
	g_x_vel = 0.005f;
	g_y_vel = 0;
	g_y_acc = -0.00098f;

	auto transform = glm::mat4(1.0f); // Identity

	auto transform_loc = glGetUniformLocation(program, "transform");
	glUniformMatrix4fv(transform_loc, 1, GL_FALSE, glm::value_ptr(transform));
}

// Draw the current scene
void draw(custom::Model model) {
	glPolygonMode(GL_FRONT_AND_BACK, g_modes[g_mode_index % g_modes.size()]);

	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); 

	glBindVertexArray(model.VAO);
	glDrawElements(GL_TRIANGLES, model.triangle_count * TRIANGLE_POINTS, GL_UNSIGNED_INT, 0);
	glBindVertexArray(0);
}

// Print help to standard output
void print_help() {
	cout << "Help:" << endl;
	cout << "  + Keyboard Bindings:" << endl;
	cout << "    - Q           -> Exit Program" << endl;
	cout << "    - ESCAPE      -> Exit Program" << endl;
	cout << "    - SPACE       -> Pause/Resume Simulation" << endl;
	cout << "    - i           -> Reset Simulation Position" << endl;
	cout << "    - c           -> Change Color" << endl;
	cout << "    - h           -> Print This Help Message" << endl;
	cout << "  + Mouse Bindings:" << endl;
	cout << "    - LEFT-CLICK  -> Change Polygon Mode" << endl;
}
/******************************************************************************/
