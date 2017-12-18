cmake_minimum_required(VERSION 3.6)
project(ProjectName)

# Project
set(SRC_DIR "${PROJECT_SOURCE_DIR}/src")
set(BIN_DIR "${PROJECT_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIR "${BIN_DIR}")

# Build Properties
set(PROJECT_EXE "project_prog")
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(COMMON_FLAGS "-lasan -Werror -Wall -Wextra")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMMON_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${COMMON_FLAGS}")

# Required Build Programs
find_program(CLANG_TIDY_EXE NAMES "clang-tidy")
if(NOT CLANG_TIDY_EXE)
    message(STATUS "clang-tidy not found.")
else()
    message(STATUS "clang-tidy found: ${CLANG_TIDY_EXE}")
	set(CLANG_TIDY_PROPERTIES "${CLANG_TIDY_EXE}"
                              "-checks=*"
                              "-warnings-as-errors=*"
                              "-format-style=google"
                              "-header-filter=\"${SRC_DIR}\""
                              "-quiet"
    )
endif()

# Build
include_directories("${SRC_DIR}")
file(GLOB_RECURSE SOURCES "${SRC_DIR}/*.cc" "${SRC_DIR}/*.c")
add_executable("${PROJECT_EXE}" ${SOURCES})

if(CLANG_TIDY_EXE)
    set_target_properties(
        "${PROJECT_EXE}" PROPERTIES CXX_CLANG_TIDY
        "${CLANG_TIDY_PROPERTIES}"
    )
endif()
