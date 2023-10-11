if(TARGET external::freetype)
    return()
endif()

message(STATUS "Third-party (external): creating target 'external::freetype'")

include(FetchContent)

FetchContent_Declare(
    freetype 
    GIT_REPOSITORY https://github.com/freetype/freetype.git
    GIT_TAG VER-2-13-2
)

cmake_policy(SET CMP0077 NEW)

set(FT_DISABLE_BZIP2 ON)
set(FT_DISABLE_HARFBUZZ ON)
set(FT_DISABLE_PNG ON)
set(FT_DISABLE_BROTLI ON)
set(FT_DISABLE_ZLIB ON)
set(SKIP_INSTALL_ALL ON)

FetchContent_MakeAvailable(freetype)

if(NOT TARGET external::freetype)
	add_library(external::freetype ALIAS freetype)
endif()