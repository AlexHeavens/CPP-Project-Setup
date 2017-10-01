cmake_minimum_required(VERSION 2.6)

set(EXEC_NAME "C++ Project")
project(${EXEC_NAME})

set(CMAKE_CXX_STANDARD 11)

set(SRC_DIR "${PROJECT_SOURCE_DIR}/src")
set(BIN_DIR "${PROJECT_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BIN_DIR}")

include_directories("${SRC_DIR}")

file(GLOB_RECURSE SOURCES "${SRC_DIR}/*.cc" "${SRC_DIR}/*.cpp" "${SRC_DIR}/*.c")

add_executable(${EXEC_NAME} ${SOURCES})
