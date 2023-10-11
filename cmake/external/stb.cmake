if(TARGET external::stb)
    return()
endif()

message(STATUS "Third-party (external): creating target 'external::stb'")

include(FetchContent)

FetchContent_Declare(
    stb
    GIT_REPOSITORY https://github.com/nothings/stb.git
    GIT_TAG master
)
FetchContent_MakeAvailable(stb)

# Generate implementation file
file(WRITE "${stb_BINARY_DIR}/stb_image.cpp.in" [[
    #define STB_IMAGE_IMPLEMENTATION
    #include <stb_image.h>

    #define STB_IMAGE_WRITE_IMPLEMENTATION
    #include <stb_image_write.h>
]])

configure_file(${stb_BINARY_DIR}/stb_image.cpp.in ${stb_BINARY_DIR}/stb_image.cpp COPYONLY)

# Define stb library
add_library(stb ${stb_BINARY_DIR}/stb_image.cpp)
target_include_directories(stb PUBLIC "${stb_SOURCE_DIR}")

add_library(external::stb ALIAS stb)