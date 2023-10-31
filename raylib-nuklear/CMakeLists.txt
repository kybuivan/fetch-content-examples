cmake_minimum_required(VERSION 3.20)

set(project_name raylib-nurklear)

include(cmake/utils.cmake)
#set(USE_EXTERNAL_GLFW IF_POSSIBLE CACHE INTERNAL "")
include(raylib)
include(raylib_nuklear)

file(GLOB _SRC
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.c"
)

add_executable(${project_name} ${_SRC})
target_link_libraries(${project_name} PUBLIC
    external::raylib
    external::raylib_nuklear
)
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/src")

target_compile_features(${project_name} PRIVATE cxx_std_17)