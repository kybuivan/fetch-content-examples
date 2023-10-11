if(TARGET external::glfw)
    return()
endif()

message(STATUS "Third-party (external): creating target 'external::glfw'")

include(FetchContent)

FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG 3.3.8
)

set(GLFW_BUILD_EXAMPLES OFF CACHE INTERNAL "Build the GLFW example programs")
set(GLFW_BUILD_TESTS OFF CACHE INTERNAL "Build the GLFW test programs")
set(GLFW_BUILD_DOCS OFF CACHE INTERNAL "Build the GLFW documentation")
set(GLFW_INSTALL OFF CACHE INTERNAL "Generate installation target")
set(GLFW_VULKAN_STATIC OFF CACHE INTERNAL "Use the Vulkan loader statically linked into application")

FetchContent_MakeAvailable(glfw)

add_library(external::glfw ALIAS glfw)