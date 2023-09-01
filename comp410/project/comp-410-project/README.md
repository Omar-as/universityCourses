# COMP410 - Final Project - GPU-Accelerated Ray Tracer

## Team

- Ameer Taweel (ataweel20)
- Omar Al Asaad (oasaad20)

## Dependencies

- GCC Compiler `v12.2.0`
- libGL `v1.6.0`
- GLFW `v3.3.8`
- GLEW `v2.2.0`
- GLM `v0.9.9.8`

**NOTE:** The code was tested only using the exact version of these
dependencies. It compiles with no errors or warnings. The code might not compile
or work as intended if you don't have the correct versions of all dependencies.

**NOTE:** The project was developed and tested on Linux. We tried to write the
code in a way that supports macOS, but we don't have access to a macOS device
and we don't guarantee that it works. Please evaluate our code on a Linux
device.

## Compilation

Run this command from the `src` directory:

```bash
g++ -lGL -lglfw -lGLEW -Wall -o main.out main.cpp
```

## Usage

Run this command from the `src` project directory:

```bash
./main.out
```

**NOTE:** The command above assumes you did the compilation step.
