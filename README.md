# C++ Project Setup

This is a template implementation of a C/C++ project that supports a modern build system, compiler tools and testing framework.

Specifically, templates for the following tools are provided:
- CMake build system
- clang-tidy and clang-format for linting
- gtest for unit testing

## Requirements
The following must be installed for this sample project to build:
- CMake 3.6 or higher.
- clang-tidy
- gtest

## Setup
It is recommended to add a pre-commit hook requiring the unit tests to pass.  This can be done be executing the provided scripts/install/_hooks.sh script.
