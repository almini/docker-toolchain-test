cmake_minimum_required(VERSION 3.16)
project(docker_toolchain_test)

set(CMAKE_CXX_STANDARD 17)

message(STATUS "PATH: $ENV{PATH}")

add_executable(docker_toolchain_test main.cpp)
