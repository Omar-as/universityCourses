# mandelbrot-kuacc: mandelbrot.cpp mandelbrot.hpp main.cpp
# 	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot.cpp -fopenmp  -o ./mandelbrot


# mandelbrot-vis: mandelbrot.cpp mandelbrot.hpp main.cpp
# 	g++ -Wall -Werror -W -Wextra main.cpp mandelbrot.cpp -fopenmp -lsfml-system -lsfml-window -lsfml-graphics -o ./mandelbrot

# vis: mandelbrot-vis
# 	./mandelbrot

# run: mandelbrot-kuacc
# 	./mandelbrot

# clean:
# 	rm -f -- ./tags ./mandelbrot ./*.ppm

mandelbrot-kuacc: mandelbrot.cpp mandelbrot.hpp main.cpp
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot.cpp -fopenmp -o ./cmp_files/mandelbrot
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic1.cpp -fopenmp -o ./cmp_files/mandelbrot_dynamic1
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic2.cpp -fopenmp -o ./cmp_files/mandelbrot_dynamic2
	g++ -Wall -Werror -W -Wextra -DKUACC main.cpp mandelbrot_dynamic3.cpp -fopenmp -o ./cmp_files/mandelbrot_dynamic3


mandelbrot-vis: mandelbrot.cpp mandelbrot.hpp main.cpp
	g++ -Wall -Werror -W -Wextra main.cpp mandelbrot.cpp -fopenmp -lsfml-system -lsfml-window -lsfml-graphics -o ./cmp_files/mandelbrot

vis: mandelbrot-vis
	./cmp_files/mandelbrot

run: mandelbrot-kuacc
	./cmp_files/mandelbrot

clean:
	rm ./cmp_files/*