if(TARGET external::cglm)
    return()
endif()

message(STATUS "Third-party (external): creating target 'external::cglm'")

include(FetchContent)

FetchContent_Declare(
    cglm
    GIT_REPOSITORY https://github.com/recp/cglm.git
    GIT_TAG v0.9.1
)

set(CGLM_SHARED OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(cglm)

add_library(external::cglm ALIAS cglm)
