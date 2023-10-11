if(TARGET external::glm)
    return()
endif()

message(STATUS "Third-party (external): creating target 'external::glm'")

include(FetchContent)

FetchContent_Declare(
    glm
    GIT_REPOSITORY https://github.com/g-truc/glm.git
    GIT_TAG 0.9.9.8
)

set(GLM_TEST_ENABLE OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(glm)

add_library(external::glm ALIAS glm)
