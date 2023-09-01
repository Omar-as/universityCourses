// Compile / Link OpenGL Shaders

#ifndef __CUSTOM_GL_SHADER__
#define __CUSTOM_GL_SHADER__

#include <iostream>

#include "gl_load.cpp"

namespace custom {
	using namespace std;

	typedef struct GLprogram {
		int id;

		GLprogram(GLuint id): id(id) {}

		void use() {
			glUseProgram(id);
		}

		void set_uniform(const char* key, int value) {
			auto loc = glGetUniformLocation(id, key);
			glUniform1i(loc, (GLint) value);
		}

		void set_uniform(const char* key, unsigned int value) {
			auto loc = glGetUniformLocation(id, key);
			glUniform1ui(loc, (GLuint) value);
		}

		void set_uniform(const char* key, float value) {
			auto loc = glGetUniformLocation(id, key);
			glUniform1f(loc, (GLfloat) value);
		}

		void set_uniform(const char* key, float x, float y, float z) {
			auto loc = glGetUniformLocation(id, key);
			glUniform3f(loc, (GLfloat) x, (GLfloat) y, (GLfloat) z);
		}

		void bind_2d_tex(GLuint binding, GLuint tex_id, GLenum access) {
			glBindImageTexture(binding, tex_id, 0, GL_FALSE, 0, access, GL_RGBA32F);
		}

		void bind_3d_tex(GLuint binding, GLuint tex_id, GLenum access) {
			glBindImageTexture(binding, tex_id, 0, GL_TRUE, 0, access, GL_RGBA32F);
		}
	} GLprogram;

	GLchar* gl_load_shader_code(const char* filename) {
		auto file = fopen(filename, "r");

		if (file == NULL) {
			cerr << "Failed to open " << filename << "." << endl;
			exit(EXIT_FAILURE);
		}

		// Determine file size
		fseek(file, 0, SEEK_END);
		auto file_size = ftell(file);

		auto code = new GLchar[file_size + 1];

		rewind(file);
		auto read_size = (long int) fread(code, sizeof(GLchar), file_size, file);

		if (read_size != file_size) {
			cerr << "Failed to read " << filename << "." << endl;

			delete[] code;
			exit(EXIT_FAILURE);
		}

		// Terminate C-string
		code[file_size] = '\0';

		// Close file
		fclose(file);

		return code;
	}

	// Compile OpenGL Shader
	// Supports different types of shaders
	GLuint gl_compile_shader(const char* filename, GLenum type) {
		auto code = gl_load_shader_code(filename);

		// Compile shader
		GLuint shader = glCreateShader(type);
		glShaderSource(shader, 1, &code, NULL);
		glCompileShader(shader);

		// Check compilation errors
		GLint compiled;
		glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
		if (!compiled) {
			// Get error log
			GLint log_size;
			glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &log_size);
			auto log = new GLchar[log_size];
			glGetShaderInfoLog(shader, log_size, NULL, log);

			cerr << "Failed to compile " << filename << ":" << endl;
			cerr << "\t" << log << endl;

			delete[] log;
			delete[] code;
			exit(EXIT_FAILURE);
		}

		delete[] code;

		return shader;
	}

	GLprogram gl_make_program_display(const char* vshader_path, const char* fshader_path) {
		auto vertex_shader   = custom::gl_compile_shader(vshader_path, GL_VERTEX_SHADER);
		auto fragment_shader = custom::gl_compile_shader(fshader_path, GL_FRAGMENT_SHADER);
	
		auto program_id = glCreateProgram();

		glAttachShader(program_id, vertex_shader);
		glAttachShader(program_id, fragment_shader);
		glLinkProgram(program_id);

		glDeleteShader(vertex_shader);
		glDeleteShader(fragment_shader);

		// Check linking errors
		GLint linked;
		glGetProgramiv(program_id, GL_LINK_STATUS, &linked);
		if(!linked) {
			// Get error log
			GLint log_size;
			glGetProgramiv(program_id, GL_INFO_LOG_LENGTH, &log_size);
			auto log = new GLchar[log_size];
			glGetProgramInfoLog(program_id, log_size, NULL, log);

			cerr << "Failed to link shader program:" << endl;
			cerr << "\t" << log << endl;

			delete[] log;
			exit(EXIT_FAILURE);
		}

		return GLprogram(program_id);
	}

	GLprogram gl_make_program_compute(const char* cshader_path) {
		auto compute_shader  = custom::gl_compile_shader(cshader_path, GL_COMPUTE_SHADER);
	
		auto program_id = glCreateProgram();

		glAttachShader(program_id, compute_shader);
		glLinkProgram(program_id);

		glDeleteShader(compute_shader);

		// Check linking errors
		GLint linked;
		glGetProgramiv(program_id, GL_LINK_STATUS, &linked);
		if(!linked) {
			// Get error log
			GLint log_size;
			glGetProgramiv(program_id, GL_INFO_LOG_LENGTH, &log_size);
			auto log = new GLchar[log_size];
			glGetProgramInfoLog(program_id, log_size, NULL, log);

			cerr << "Failed to link shader program:" << endl;
			cerr << "\t" << log << endl;

			delete[] log;
			exit(EXIT_FAILURE);
		}

		return GLprogram(program_id);
	}
}

#endif // __CUSTOM_GL_SHADER__
