#!/usr/bin/env bash

PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
PROJECT_SCRIPTS_DIR=$PROJECT_ROOT_DIR/scripts
GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
ln -sf $PROJECT_SCRIPTS_DIR/pre-commit.sh $GIT_DIR/hooks/pre-commit
echo "Done."
