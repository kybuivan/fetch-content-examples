cmake_minimum_required(VERSION 3.20)

project("glad-glfw")

set(CMAKE_CXX_STANDARD 20)
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${PROJECT_SOURCE_DIR}/cmake/external)

include(freetype)
include(glfw)
include(glad)
include(cglm)

file(GLOB _SRC
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.c"
)

add_executable(${PROJECT_NAME} ${_SRC})
target_link_libraries(${PROJECT_NAME} PUBLIC
    external::freetype
    external::glfw
    external::glad
    external::cglm
)
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/src")

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_17)