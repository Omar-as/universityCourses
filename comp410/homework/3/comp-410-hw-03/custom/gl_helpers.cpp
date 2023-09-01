// OpenGL Helper Functions

#ifndef __CUSTOM_GL_HELPERS__
#define __CUSTOM_GL_HELPERS__

#include <vector>
#include <string>
#include <iostream>

namespace custom {
	using namespace std;

	// Move vectors to GPU buffer
	// Standard glBufferData accepst only arrays
	template <class T> void glBufferDataV(GLenum target, const vector<T> v, GLenum usage) {
		glBufferData(target, v.size() * sizeof(T), &v.front(), usage);
	}

	unsigned char* load_ppm(const char* filename, int* width, int* height) {

		FILE* file = fopen(filename, "r");
		if (!file) {
			std::cerr << "ERROR: Could not load PPM file " << filename << ".\n";
			exit(EXIT_FAILURE);
		}

		char info[3];
		int max_val;
		if (fscanf(file, "%2s", info) != 1 || fscanf(file, "%d %d %d", width, height, &max_val) != 3) {
			std::cerr << "ERROR: While reading PPM file " << filename << ".\n";
			fclose(file);
			exit(EXIT_FAILURE);
		}

		int image_size = *width * *height * 3;
		unsigned char* image = new unsigned char[image_size];

		for (int i = 0; i < image_size; ++i) {
			int temp;
			if (fscanf(file, "%d", &temp) != 1) {
				std::cerr << "ERROR: While reading PPM file " << filename << ".\n";
				delete[] image;
				fclose(file);
				exit(EXIT_FAILURE);
			}
			image[i] = static_cast<unsigned char>(temp);
		}

		fclose(file);
		return image;
	}


}

#endif // __CUSTOM_GL_HELPERS__
