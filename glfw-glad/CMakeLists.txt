set(project_name glfw-glad)

include(freetype)
include(glfw)
include(glad)
include(cglm)
include(stb)

file(GLOB _SRC
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.h"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/**/*.c"
)

add_executable(${project_name} ${_SRC})
target_link_libraries(${project_name} PUBLIC
    external::freetype
    external::glfw
    external::glad
    external::cglm
    external::stb
)
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/src")

target_compile_features(${project_name} PRIVATE cxx_std_17)