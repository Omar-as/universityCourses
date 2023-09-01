// Rubik's Cube Constants and Helpers

#ifndef __CUSTOM_RUBIK__
#define __CUSTOM_RUBIK__

#include <glm/glm.hpp>

// Constants
#define SHUFFLE_TIMES  10
#define N              3
#define FACES          6
#define CELLS_PER_FACE (N * N)
#define INSTANCES      (FACES * CELLS_PER_FACE)
#define SCALE          (1.0f / N)
#define FACE(i)        ((i) / CELLS_PER_FACE)
#define FACE_IDX(i)    ((i) % CELLS_PER_FACE)
#define ROW(i)         (FACE_IDX(i) / N)
#define COL(i)         (FACE_IDX(i) % N)
#define IDX(f, r, c)   ((CELLS_PER_FACE * (f)) + (N * (r)) + (c))
#define STEP           5.0f

namespace custom {
	using namespace std;

	/***********************/
	/* Initial Positioning */
	/***********************/

	vector<GLfloat> BASE_SQUARE = {
		// Upper Left Triangle
		 0.5f,  0.5f, -0.5f,
		-0.5f,  0.5f, -0.5f,
		-0.5f, -0.5f, -0.5f,

		// Lower Right Triangle
		-0.5f, -0.5f, -0.5f,
		 0.5f, -0.5f, -0.5f,
		 0.5f,  0.5f, -0.5f,
	};


	// Initial Positioning
	vector<glm::vec3> I_FACE_ROTATE_AXIS = {
		{ 0.0f, 1.0f, 0.0f },
		{ 0.0f, 1.0f, 0.0f },
		{ 0.0f, 1.0f, 0.0f },
		{ 0.0f, 1.0f, 0.0f },
		{ 1.0f, 0.0f, 0.0f },
		{ 1.0f, 0.0f, 0.0f }
	};

	vector<float> I_FACE_ROTATE_ANGLE = {
		 000.0f,
		-090.0f,
		-180.0f,
		-270.0f,
		 090.0f,
		-090.0f
	};

	/********************/
	/* Initial Coloring */
	/********************/

	vector<glm::vec3> FACE_COLORS = {
		{ 244, 67,  54  },
		{ 66,  165, 245 },
		{ 255, 152, 0   },
		{ 76,  175, 80  },
		{ 255, 235, 59  },
		{ 255, 255, 255 }
	};

	/*************/
	/* Rotations */
	/*************/

	vector<glm::vec3> R_FACE_ROTATE_AXIS = {
		{  0.0f,  0.0f, -1.0f },
		{  1.0f,  0.0f,  0.0f },
		{  0.0f,  0.0f,  1.0f },
		{ -1.0f,  0.0f,  0.0f },
		{  0.0f,  1.0f,  0.0f },
		{  0.0f, -1.0f,  0.0f }
	};

	bool is_neighbor(int face, int i) {
		auto iface = FACE(i);
		auto irow  = ROW(i);
		auto icol  = COL(i);

		if (face == 0) {
			if (iface == 1 && icol == 0    ) return true;
			if (iface == 3 && icol == N - 1) return true;
			if (iface == 4 && irow == N - 1) return true;
			if (iface == 5 && irow == 0    ) return true;
		}

		if (face == 1) {
			if (iface == 0 && icol == N - 1) return true;
			if (iface == 2 && icol == 0    ) return true;
			if (iface == 4 && icol == N - 1) return true;
			if (iface == 5 && icol == N - 1) return true;
		}

		if (face == 2) {
			if (iface == 1 && icol == N - 1) return true;
			if (iface == 3 && icol == 0    ) return true;
			if (iface == 4 && irow == 0    ) return true;
			if (iface == 5 && irow == N - 1) return true;
		}

		if (face == 3) {
			if (iface == 0 && icol == 0    ) return true;
			if (iface == 2 && icol == N - 1) return true;
			if (iface == 4 && icol == 0    ) return true;
			if (iface == 5 && icol == 0    ) return true;
		}

		if (face == 4 && iface < 4 && irow == 0) return true;

		return face == 5 && iface < 4 && irow == N - 1;
	}

	int neighbor_next_i(int face, int i) {
		auto iface = FACE(i);
		auto irow  = ROW(i);
		auto icol  = COL(i);

		if (face == 0) {
			if (iface == 1) return IDX(5, 0    , N - 1 - irow);
			if (iface == 3) return IDX(4, N - 1, N - 1 - irow);
			if (iface == 4) return IDX(1, icol , 0           );
			if (iface == 5) return IDX(3, icol , N - 1       );
		}

		if (face == 1) {
			if (iface == 0) return IDX(4, irow        , N - 1);
			if (iface == 2) return IDX(5, N - 1 - irow, N - 1);
			if (iface == 4) return IDX(2, N - 1 - irow, 0    );
			if (iface == 5) return IDX(0, irow        , N - 1);
		}

		if (face == 2) {
			if (iface == 1) return IDX(4, 0           , irow );
			if (iface == 3) return IDX(5, N - 1       , irow );
			if (iface == 4) return IDX(3, N - 1 - icol, 0    );
			if (iface == 5) return IDX(1, N - 1 - icol, N - 1);
		}

		if (face == 3) {
			if (iface == 0) return IDX(5, irow        , 0    );
			if (iface == 2) return IDX(4, N - 1 - irow, 0    );
			if (iface == 4) return IDX(0, irow        , 0    );
			if (iface == 5) return IDX(2, N - 1 - irow, N - 1);
		}

		if (face == 4) {
			if (iface == 0) return IDX(3, 0, icol);
			if (iface == 1) return IDX(0, 0, icol);
			if (iface == 2) return IDX(1, 0, icol);
			if (iface == 3) return IDX(2, 0, icol);
		}

		// face 5
		if (iface == 0) return IDX(1, N - 1, icol);
		if (iface == 1) return IDX(2, N - 1, icol);
		if (iface == 2) return IDX(3, N - 1, icol);
		// iface 3
		return IDX(0, N - 1, icol);
	}
}

#endif // __CUSTOM_RUBIK__
