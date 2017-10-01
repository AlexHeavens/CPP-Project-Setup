#!/usr/bin/env bash
PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
PROJECT_BUILD_DIR="$PROJECT_ROOT_DIR/build"

mkdir -p $PROJECT_BUILD_DIR
cd $PROJECT_BUILD_DIR
cmake $PROJECT_ROOT_DIR
make
