// Utility Functions

#ifndef __CUSTOM_UTILS__
#define __CUSTOM_UTILS__

#include <vector>

namespace custom {
	using namespace std;

	// Move vectors to GPU buffer
	// Standard glBufferData accepst only arrays
	template <class T> void glBufferDataV(GLenum target, const vector<T> v, GLenum usage) {
		glBufferData(target, v.size() * sizeof(T), &v.front(), usage);
	}

	int uniform_rand(int min, int max) {
		int r;
		do {
			r = rand();
		} while (r < (int) (((unsigned int)(RAND_MAX) + 1) % (max + 1 - min)));
		return r % (max + 1 - min) + min;
	}
}

#endif // __CUSTOM_UTILS__
