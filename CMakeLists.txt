cmake_minimum_required(VERSION 3.20)

project("fetch-content-examples")

set(CMAKE_CXX_STANDARD 20)
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${PROJECT_SOURCE_DIR}/cmake/external)

add_subdirectory(glfw-glad)