/******************************************************************************/

/***********/
/* Imports */
/***********/

/* STD */

#include <iostream>
#include <random>

using namespace std;

/* Custom Imports */

#include "custom/gl_load.cpp"    // Load OpenGL function pointers
#include "custom/gl_debug.cpp"   // Enable OpenGL errors/warnings
#include "custom/gl_shader.cpp"  // Compile/link OpenGL shaders
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
#define OPEN_GL_MAJOR_VERSION 4
#define OPEN_GL_MINOR_VERSION 3

// Shader locations
#define V_SHADER_PATH "shaders/v_shader.glsl"
#define F_SHADER_PATH "shaders/f_shader.glsl"
#define C_SHADER_PATH "shaders/c_shader.glsl"
#define A_SHADER_PATH "shaders/a_shader.glsl"

// Window constants
#define WINDOW_WIDTH  1200
#define WINDOW_HEIGHT 800
#define WINDOW_TITLE  "ZERO NO GATO"

// Ray-Tracer Settings
#define SAMPLES_PER_PIXEL 50
#define MAX_DEPTH         50
#define VERTICAL_FOV      90
#define DIST_TO_FOCUS     10
#define APERTURE          0
#define LOOKFROM          0.0f, 0.0f,  0.0f
#define LOOKAT            0.0f, 0.0f, -1.0f
#define VUP               0.0f, 1.0f,  0.0f

#define ZERO {0, 0, 0}

/******************************************************************************/

/*************************/
/* Function Declarations */
/*************************/

void init_3d_texture(GLuint* id);
void init_2d_texture(GLuint* id);
void init_quad(GLuint* quad_vao, GLuint* quad_vbo);
void disp_quad(GLuint  quad_vao, GLuint  texture);

typedef struct Sphere {
	GLfloat center[3];
	GLfloat radius;
	GLfloat color[3];
	GLfloat fuzz;
	GLfloat dummy1[3];
	GLfloat ir; // index-of-refraction
	GLfloat dummy2[3];
	GLfloat material; // 0 -> lambertian, 1 -> metal, 2 -> dielectric 
} Sphere;

float rand_float() {
	static std::uniform_real_distribution<float> distribution(0.0, 1.0);
	static std::mt19937 generator;
	return distribution(generator);
}

int main() {
	// Initialize GLFW
	custom::glfw_init(OPEN_GL_MAJOR_VERSION, OPEN_GL_MINOR_VERSION);

	// Create window
	auto window = custom::glfw_create_window(WINDOW_WIDTH, WINDOW_HEIGHT, WINDOW_TITLE);
	glfwMakeContextCurrent(window);

	// Load OpenGL function pointers
	custom::gl_load();

	// Enable OpenGL Errors / Warnings
	custom::gl_debug_enable();

	// Load programs
	auto program_compute = custom::gl_make_program_compute(C_SHADER_PATH);
	auto program_average = custom::gl_make_program_compute(A_SHADER_PATH);
	auto program_display = custom::gl_make_program_display(V_SHADER_PATH, F_SHADER_PATH);

	GLuint tex_3d, tex_2d, quad_vao, quad_vbo;
	init_3d_texture(&tex_3d);
	init_2d_texture(&tex_2d);
	init_quad(&quad_vao, &quad_vbo);

	vector<Sphere> spheres;

	// NO HIT SPHERE
	// DO NOT REMOVE
	spheres.push_back({ZERO, 0, ZERO, 0, ZERO, 0, ZERO, 0});

	// BIG SCENE
	// spheres.push_back({{0, -1000, 0}, 1000, {0.5, 0.5, 0.5}, 0.0, ZERO, 0.0, ZERO, 0});

	// for (int a = -11; a < 11; a++) {
	// 	for (int b = -11; b < 11; b++) {
	// 		auto choose_mat = rand_float();
	// 		auto center     = glm::vec3(a + 0.9f * rand_float(), 0.2, b + 0.9f * rand_float());

	// 		if ((center - glm::vec3(4, 0.2, 0)).length() <= 0.9) continue;

	// 		if (choose_mat < 0.8) {
	// 			// diffuse material
	// 			auto color = glm::vec3(rand_float(), rand_float(), rand_float()) * glm::vec3(rand_float(), rand_float(), rand_float());
	// 			spheres.push_back({{center.x, center.y, center.z}, 0.2, {color.x, color.y, color.z}, 0.0, ZERO, 0.0, ZERO, 0});
	// 		} else if (choose_mat < 0.95) {
	// 			// metal
	// 			auto color = glm::vec3(rand_float() * 0.5f, rand_float() * 0.5f, rand_float() * 0.5f);
	// 			auto fuzz = rand_float() * 0.5f;
	// 			spheres.push_back({{center.x, center.y, center.z}, 0.2, {color.x, color.y, color.z}, fuzz, ZERO, 0.0, ZERO, 1});
	// 		} else {
	// 			// glass
	// 			spheres.push_back({{center.x, center.y, center.z}, 0.2, ZERO, 0.0, ZERO, 1.5, ZERO, 2});
	// 		}
	// 	}
	// }

	// spheres.push_back({{ 0, 1, 0}, 1, ZERO,            0.0, ZERO, 1.5, ZERO, 2});
	// spheres.push_back({{-4, 1, 0}, 1, {0.4, 0.2, 0.1}, 0.0, ZERO, 0.0, ZERO, 0});
	// spheres.push_back({{ 4, 1, 0}, 1, {0.7, 0.6, 0.5}, 0.0, ZERO, 0.0, ZERO, 1});

	// 3 Spheres Scene
	spheres.push_back({{ 0.0, -100.5, -1.0}, 100, {0.5, 0.5, 0.5}, 0.0, ZERO, 0.0, ZERO, 0});
	spheres.push_back({{ 0.0,    0.0, -1.0}, 0.5, {0.9, 0.1, 0.3}, 0.0, ZERO, 0.0, ZERO, 0});
	spheres.push_back({{ 1.0,    0.0, -1.0}, 0.5, {0.8, 0.6, 0.2}, 0.0, ZERO, 0.0, ZERO, 1});
	spheres.push_back({{-1.0,    0.0, -1.0}, 0.5, {0.8, 0.6, 0.2}, 0.5, ZERO, 0.0, ZERO, 1});

	program_compute.use();

	GLuint ssbo;
	glGenBuffers(1, &ssbo);
	glBindBuffer(GL_SHADER_STORAGE_BUFFER, ssbo);
	// sizeof(data) only works for statically sized C/C++ arrays.
	glBufferData(GL_SHADER_STORAGE_BUFFER, spheres.size() * sizeof(Sphere), &spheres.front(), GL_STATIC_DRAW);
	glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, ssbo);
	glBindBuffer(GL_SHADER_STORAGE_BUFFER, 0); // unbind

	program_compute.bind_3d_tex(0, tex_3d, GL_WRITE_ONLY);
	program_compute.set_uniform("samples_per_pixel", (unsigned) SAMPLES_PER_PIXEL);
	program_compute.set_uniform("vfov",              (float)    VERTICAL_FOV);
	program_compute.set_uniform("lookfrom",                     LOOKFROM);
	program_compute.set_uniform("lookat",                       LOOKAT);
	program_compute.set_uniform("vup",                          VUP);
	program_compute.set_uniform("max_depth",         (unsigned) MAX_DEPTH);
	program_compute.set_uniform("dist_to_focus",     (float)    DIST_TO_FOCUS);
	program_compute.set_uniform("aperture",          (float)    APERTURE);
	program_compute.set_uniform("sphere_count",      (unsigned) spheres.size());
	glDispatchCompute(WINDOW_WIDTH, WINDOW_HEIGHT, SAMPLES_PER_PIXEL);

	// Make sure writing to image has finished before read
	glMemoryBarrier(GL_SHADER_IMAGE_ACCESS_BARRIER_BIT);

	program_average.use();
	program_average.bind_3d_tex(0, tex_3d, GL_READ_ONLY);
	program_average.bind_2d_tex(1, tex_2d, GL_WRITE_ONLY);
	program_average.set_uniform("samples_per_pixel", (unsigned) SAMPLES_PER_PIXEL);
	glDispatchCompute(WINDOW_WIDTH, WINDOW_HEIGHT, 1);

	// Make sure writing to image has finished before read
	glMemoryBarrier(GL_SHADER_IMAGE_ACCESS_BARRIER_BIT);

	// Event Loop
	while(!glfwWindowShouldClose(window)) {
		// Display
		program_display.use();
		program_display.set_uniform("tex", 0);

		disp_quad(quad_vao, tex_2d);
		glfwSwapBuffers(window);

		glfwPollEvents();
	}

	// Terminate
	glfwTerminate();
	return EXIT_SUCCESS;
}

/******************************************************************************/

void init_3d_texture(GLuint* id) {
	glGenTextures(1, id);
	glBindTexture(GL_TEXTURE_3D, *id);
	glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA32F, WINDOW_WIDTH, WINDOW_HEIGHT, SAMPLES_PER_PIXEL, 0, GL_RGBA, GL_FLOAT, NULL);
	glBindTexture(GL_TEXTURE_3D, 0);
}

void init_2d_texture(GLuint* id) {
	glGenTextures(1, id);
	glBindTexture(GL_TEXTURE_2D, *id);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, WINDOW_WIDTH, WINDOW_HEIGHT, 0, GL_RGBA, GL_FLOAT, NULL);
	glBindTexture(GL_TEXTURE_2D, 0);
}

void init_quad(GLuint* quad_vao, GLuint* quad_vbo) {
	GLfloat quad_vertices[] = {
		// positions      , lexture coords
		-1.0f,  1.0f, 0.0f, 0.0f, 1.0f,
		-1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
		 1.0f,  1.0f, 0.0f, 1.0f, 1.0f,
		 1.0f, -1.0f, 0.0f, 1.0f, 0.0f,
	};

	glGenVertexArrays(1, quad_vao);
	glGenBuffers     (1, quad_vbo);

	glBindVertexArray(*quad_vao);
	glBindBuffer(GL_ARRAY_BUFFER, *quad_vbo);
	glBufferData(GL_ARRAY_BUFFER, sizeof(quad_vertices), &quad_vertices, GL_STATIC_DRAW);

	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void*) 0);

	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void*) (3 * sizeof(GLfloat)));
}

void disp_quad(GLuint quad_vao, GLuint texture) {
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glBindTexture(GL_TEXTURE_2D, texture);

	glBindVertexArray(quad_vao);
	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
	glBindVertexArray(0);

	glBindTexture(GL_TEXTURE_2D, 0);
}

/******************************************************************************/
