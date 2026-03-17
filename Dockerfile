FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    gcc-13 g++-13 clang-17 \
    cmake ninja-build make \
    git python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем Conan 2.0
RUN pip3 install "conan>=2.0"

WORKDIR /src
CMD ["/bin/bash"]
