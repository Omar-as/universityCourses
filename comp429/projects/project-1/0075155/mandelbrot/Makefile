mandelbrot-kuacc: mandelbrot.cpp mandelbrot.hpp main.cpp
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot.cpp -fopenmp -o ./mandelbrot.out
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic1.cpp -fopenmp -o ./mandelbrot_dynamic1.out
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic2.cpp -fopenmp -o ./mandelbrot_dynamic2.out
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic3.cpp -fopenmp -o ./mandelbrot_dynamic3.out


mandelbrot-vis: mandelbrot.cpp mandelbrot.hpp main.cpp
	g++ -Wall -Werror -W -Wextra main.cpp mandelbrot.cpp -fopenmp -lsfml-system -lsfml-window -lsfml-graphics -o ./mandelbrot.out

vis: mandelbrot-vis
	./mandelbrot.out

run: mandelbrot-kuacc
	./mandelbrot.out

clean:
	rm *.out
