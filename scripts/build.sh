#!/bin/bash
conan install . --build=missing -pr gcc_debug
cmake -B build -G Ninja -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
cmake --build build
ctest --test-dir build -V
