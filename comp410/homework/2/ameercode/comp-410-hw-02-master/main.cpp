/******************************************************************************/

/***********/
/* Imports */
/***********/

/* STD */

#include <iostream>

using namespace std;

/* Custom Imports */

#include "custom/gl_load.cpp"   // Load OpenGL function pointers
#include "custom/gl_debug.cpp"  // Enable OpenGL errors/warnings
#include "custom/gl_shader.cpp" // Compile/link OpenGL shaders
#include "custom/utils.cpp"     // Utility functions
#include "custom/glfw.cpp"      // Handle windowing operations and keyboard/mouse events
#include "custom/rubik.cpp"     // Rubik's Cube Constants and Helpers

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
#define V_SHADER "shaders/vertex_shader.glsl"
#define F_SHADER "shaders/fragment_shader.glsl"

// Window constants
#define WINDOW_WIDTH  800
#define WINDOW_HEIGHT 800
#define WINDOW_TITLE  "Rubik's Cube"

// GLM Identity Matrix
#define I glm::mat4(1.0f)

/******************************************************************************/

/****************/
/* Global State */
/****************/

// Program ID
GLuint program_id;

// Cube's State

vector<glm::vec3> colors(INSTANCES);

// Angle Change

auto change_angle = false;

auto init_cur_pos = glm::vec2(0.0, 0.0);

auto delta_angle  = glm::vec2(0.0, 0.0);
auto angle        = glm::vec2(0.0, 0.0);

// Rotations

int   selected = 1;
float theta = 0.0f;

// Random Shuffling

auto shuffle_count = 0;

/******************************************************************************/

/*************************/
/* Function Declarations */
/*************************/

void cursor_position_callback(GLFWwindow*, double, double);
void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
void win_resize_callback(GLFWwindow* window, int width, int height);
glm::mat4 construct_base_matrix();
vector<glm::mat4> construct_initial_transforms();

/******************************************************************************/

/*********/
/* Logic */
/*********/

int main() {
	/* Initialize GLFW */
	custom::glfw_init(OPEN_GL_MAJOR_VERSION, OPEN_GL_MINOR_VERSION);

	/* Create window */
	auto window = custom::glfw_create_window(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE);
	glfwMakeContextCurrent(window);

	/* Load OpenGL function pointers */
	custom::gl_load();
	glEnable(GL_DEPTH_TEST);

	/* Enable OpenGL errors/warnings */
	custom::gl_debug_enable();

	/* Initialize viewport */
	glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);

	/* Register callbacks */
	glfwSetCursorPosCallback(window, cursor_position_callback);
	glfwSetMouseButtonCallback(window, mouse_button_callback);
	glfwSetKeyCallback(window, key_callback);
	glfwSetFramebufferSizeCallback(window, win_resize_callback);

	/* Load and use program */
	program_id = custom::gl_make_program(V_SHADER, F_SHADER);
	glUseProgram(program_id);

	/* Create VAO */
	unsigned int VAO;
	glGenVertexArrays(1, &VAO);
	glBindVertexArray(VAO);

	/* Send base square data to GPU */
	unsigned int SQUARE_VBO;
	glGenBuffers(1, &SQUARE_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, SQUARE_VBO);
	custom::glBufferDataV(GL_ARRAY_BUFFER, custom::BASE_SQUARE, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_TRUE, 0, (void*) 0);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	/* Send base-square matrix to GPU */
	auto base_loc = glGetUniformLocation(program_id, "base");
	glUniformMatrix4fv(base_loc, 1, GL_FALSE, glm::value_ptr(construct_base_matrix()));

	/* Send identity matrix to GPU */
	auto identity_loc = glGetUniformLocation(program_id, "identity");
	glUniformMatrix4fv(identity_loc, 1, GL_FALSE, glm::value_ptr(I));

	/* Send N to GPU */
	auto n_loc = glGetUniformLocation(program_id, "N");
	glUniform1ui(n_loc, N);

	/* Generate initial colors */
	for (auto i = 0; i < INSTANCES; i++) {
		colors[i] = custom::FACE_COLORS[FACE(i)];
		colors[i].x -= FACE_IDX(i);
	}

	/* Generate initial transforms */
	auto initial_transforms = construct_initial_transforms();

	/* Send initial transforms to GPU */
	unsigned int INIT_VBO;
	glGenBuffers(1, &INIT_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, INIT_VBO);
	custom::glBufferDataV(GL_ARRAY_BUFFER, initial_transforms, GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, 0);

	glBindBuffer(GL_ARRAY_BUFFER, INIT_VBO);
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(glm::vec4), (void*) (0 * sizeof(glm::vec4)));
	glEnableVertexAttribArray(2);
	glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(glm::vec4), (void*) (1 * sizeof(glm::vec4)));
	glEnableVertexAttribArray(3);
	glVertexAttribPointer(3, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(glm::vec4), (void*) (2 * sizeof(glm::vec4)));
	glEnableVertexAttribArray(4);
	glVertexAttribPointer(4, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(glm::vec4), (void*) (3 * sizeof(glm::vec4)));
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glVertexAttribDivisor(1, 1);
	glVertexAttribDivisor(2, 1);
	glVertexAttribDivisor(3, 1);
	glVertexAttribDivisor(4, 1);

	/* Main Loop */
	while(!glfwWindowShouldClose(window)) {
		/* Clear color and depth buffers */
		glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); 

		/* Apply shuffles */
		if (theta == 0 && shuffle_count > 0) {
			selected = custom::uniform_rand(0, 5);
			theta += STEP;
			shuffle_count--;
		}

		/* Update color values after animation finishes */
		if (theta >= 90) {
			vector<glm::vec3> new_colors(INSTANCES);
			theta = 0;
			for (int i = 0; i < INSTANCES; i++) {
				auto j = i;
				if (FACE(i) == selected) j = IDX(FACE(i), COL(i), N - 1 - ROW(i));
				if (custom::is_neighbor(selected, i)) j = custom::neighbor_next_i(selected, i);

				new_colors[j] = colors[i];
			}
			colors = new_colors;
		}

		/* Send color data to GPU */
		unsigned int COLOR_VBO;
		glGenBuffers(1, &COLOR_VBO);
		glBindBuffer(GL_ARRAY_BUFFER, COLOR_VBO);
		custom::glBufferDataV(GL_ARRAY_BUFFER, colors, GL_DYNAMIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);

		glBindBuffer(GL_ARRAY_BUFFER, COLOR_VBO);
		glEnableVertexAttribArray(5);
		glVertexAttribPointer(5, 3, GL_FLOAT, GL_FALSE, 0, (void*) 0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);	
		glVertexAttribDivisor(5, 1);

		if (theta != 0) theta += STEP;

		auto r = glm::rotate(I, glm::radians(theta), custom::R_FACE_ROTATE_AXIS[selected]);
		auto r_loc = glGetUniformLocation(program_id, "rotate");
		glUniformMatrix4fv(r_loc, 1, GL_FALSE, glm::value_ptr(r));

		vector<GLfloat> should_animate(INSTANCES);
		for (auto i = 0; i < INSTANCES; i++) {
			if (theta == 0) {
				should_animate[i] = 0;
				continue;
			}

			if (FACE(i) == selected) should_animate[i] = 1;
			else should_animate[i] = custom::is_neighbor(selected, i);
		}

		unsigned int ANIMATE_VBO;
		glGenBuffers(1, &ANIMATE_VBO);
		glBindBuffer(GL_ARRAY_BUFFER, ANIMATE_VBO);
		custom::glBufferDataV(GL_ARRAY_BUFFER, should_animate, GL_DYNAMIC_DRAW);
		glBindBuffer(GL_ARRAY_BUFFER, 0);

		glBindBuffer(GL_ARRAY_BUFFER, ANIMATE_VBO);
		glEnableVertexAttribArray(6);
		glVertexAttribPointer(6, 1, GL_FLOAT, GL_FALSE, 0, (void*) 0);
		glBindBuffer(GL_ARRAY_BUFFER, 0);
		glVertexAttribDivisor(6, 1);

		auto ax = glm::rotate(I, glm::radians(angle.x), glm::vec3(1.0f, 0.0f, 0.0f));
		auto ay = glm::rotate(I, glm::radians(angle.y), glm::vec3(0.0f, 1.0f, 0.0f));
		auto a  = ax * ay;
		auto a_loc = glGetUniformLocation(program_id, "angle");
		glUniformMatrix4fv(a_loc, 1, GL_FALSE, glm::value_ptr(a));

		auto fill_loc = glGetUniformLocation(program_id, "fill");

		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
		glUniform1ui(fill_loc, 1);
		glPolygonOffset(1,1);
		glEnable(GL_POLYGON_OFFSET_FILL);
		glDrawArraysInstanced(GL_TRIANGLES, 0, 6, INSTANCES);

		glDisable(GL_POLYGON_OFFSET_FILL);
		glUniform1ui(fill_loc, 0);
		glPolygonMode(GL_FRONT_AND_BACK,GL_LINE);
		glDrawArraysInstanced(GL_TRIANGLES, 0, 6, INSTANCES);

		glfwSwapBuffers(window);

		glfwPollEvents();
	}

	/* Terminate */

	glfwTerminate();
	return EXIT_SUCCESS;
}

/******************************************************************************/

/********************/
/* Helper Functions */
/********************/

void angle_change_callback(GLFWwindow* window, int action) {
	double cur_x, cur_y;
	glfwGetCursorPos(window, &cur_x, &cur_y);

	init_cur_pos = glm::vec2(cur_x, cur_y);

	if (action == GLFW_PRESS) {
		change_angle = true;
	} else if (action == GLFW_RELEASE) {
		change_angle = false;
		delta_angle  = glm::vec2(0.0, 0.0);
	}
}

void cursor_position_callback(GLFWwindow* window, double cur_x, double cur_y) {
	if (!change_angle) return;

	int width, height;
	glfwGetWindowSize(window, &width, &height);

	angle.x -= delta_angle.x;
	angle.y -= delta_angle.y;
	
	if (angle.x >= 360) angle.x -= 360;
	if (angle.y >= 360) angle.y -= 360;

	delta_angle.x = (init_cur_pos.y - cur_y) / width  * 360;
	delta_angle.y = (init_cur_pos.x - cur_x) / height * 360;

	angle.x += delta_angle.x;
	angle.y += delta_angle.y;
}

void perform_picking(GLFWwindow* window) {
	// Cursor position
	double x, y;
	glfwGetCursorPos(window, &x, &y);
	
	// Frame-buffer width and height
	int fbw, fbh;
	glfwGetFramebufferSize(window, &fbw, &fbh);

	// Window width and height
	int ww, wh;
	glfwGetWindowSize(window, &ww, &wh);

	// Convert from window coordinates to frame buffer coordinates
	x *= fbw / ww;
	y *= fbh / wh;
	y  = fbh - y;

	// Get the pixel value
	unsigned char pixel[4];
	glReadPixels(x, y, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, pixel);

	auto color = glm::vec3(pixel[0], pixel[1], pixel[2]);

	for (auto i = 0; i < INSTANCES; i++) {
		if (colors[i] != color) continue;
		selected = FACE(i);
		theta += STEP;
		break;
	}
}

void mouse_button_callback(GLFWwindow* window, int button, int action, int mods) {
	// Use the left mouse to change the angle
	if (button == GLFW_MOUSE_BUTTON_LEFT)
		return angle_change_callback(window, action);

	// Use the right mouse to rotate a face
	if (button == GLFW_MOUSE_BUTTON_RIGHT
		&& action == GLFW_PRESS
		&& theta == 0
		&& shuffle_count == 0
	) return perform_picking(window);
}

void print_help() {
	cout << "Rubik's Cube Help Menu:" << endl;
	cout << "  - Drag with left mouse button to change angle." << endl;
	cout << "  - Right-click to rotate a face (clockwise)." << endl;
	cout << "  - Press `s` to shuffle the cube randomly." << endl;
	cout << "  - Press `q` to quit." << endl;
	cout << "  - Press `h` to show this help menu." << endl;
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	if (key == GLFW_KEY_H && action == GLFW_PRESS) return print_help();
	if (key == GLFW_KEY_Q && action == GLFW_PRESS) exit(EXIT_SUCCESS);
	if (key == GLFW_KEY_S && action == GLFW_PRESS) shuffle_count = SHUFFLE_TIMES;
}

// Resize while keeping aspect-ratio
void win_resize_callback(GLFWwindow* window, int width, int height) {
	// Use the entire window
    glViewport(0, 0, width, height);

    // Construct projection matrix
	auto x = height < width ? (GLfloat) width / (GLfloat) height : 1.0f;
	auto y = width < height ? (GLfloat) height / (GLfloat) width : 1.0f;
	auto z = 1.0f;

	auto projection = glm::ortho(-x, x, -y, y, z, -z);

	// Send projection matrix to GPU
	auto projection_loc = glGetUniformLocation(program_id, "projection");
	glUniformMatrix4fv(projection_loc, 1, GL_FALSE, glm::value_ptr(projection));
}

glm::mat4 construct_base_matrix() {
	auto trans_amount = ((1.0f - SCALE) / 2.0f);

	auto scale = glm::scale(I, glm::vec3(SCALE, SCALE, 1.0f));
	auto trans = glm::translate(I, glm::vec3(-trans_amount, trans_amount, 0.0f));
	return trans * scale;
}

vector<glm::mat4> construct_initial_transforms() {
	vector<glm::mat4> initial_transforms(INSTANCES);
	for (auto i = 0; i < INSTANCES; i++) {
		auto translate = glm::translate(I, glm::vec3(SCALE * COL(i), -SCALE * ROW(i), 0.0f));
		auto rotate    = glm::rotate(I, glm::radians(custom::I_FACE_ROTATE_ANGLE[FACE(i)]), custom::I_FACE_ROTATE_AXIS[FACE(i)]);
		initial_transforms[i] = rotate * translate;
	}
	return initial_transforms;
}

/******************************************************************************/
