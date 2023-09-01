# Platform

We had several candidate platforms to use for this project:

- C/C++ (Plain)
- C/C++ with [OpenCL][opencl]
- C/C++ with [SYCL][sycl]
- C/C++ with [CUDA][cuda]
- C/C++ with [HIP][hip]
- C/C++ with [ArrayFire][arrayfire]
- C/C++ with [Kokkos][kokkos]

## OpenCL

Check if your GPU supports OpenCL by running `clinfo -l`. It will list all
devices supporting OpenCL on the machine.

## CUDA

Check if your GPU supports CUDA by running `nvidia-smi`. It will show the GPU,
the CUDA version, and the NVIDIA driver version.

## ArrayFire

Although it was available in [nixpkgs][arrayfire-200], we couldn't get it to
work. Also it does not seem to include the kind of kernels we want. We need to
use a lower level platform to write custom kernels with ArrayFire. So there is
no benifit for us in using it.

## Kokkos

Eliminated because it wasn't included in [nixpkgs][kokkos-404] at the time we
checked (07-05-2023).

<!-- Platforms -->

[opencl]:    https://www.khronos.org/opencl
[sycl]:      https://www.khronos.org/sycl
[cuda]:      https://developer.nvidia.com/cuda-toolkit
[hip]:       https://github.com/ROCm-Developer-Tools/HIP
[arrayfire]: https://github.com/arrayfire/arrayfire
[kokkos]:    https://github.com/kokkos/kokkos

<!-- Kokkos -->

[kokkos-404]: https://search.nixos.org/packages?channel=unstable&sort=relevance&type=packages&query=kokkos

<!-- ArrayFire -->
[arrayfire-200]: https://search.nixos.org/packages?channel=unstable&sort=relevance&type=packages&query=arrayfire
