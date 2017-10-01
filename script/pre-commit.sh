#!/usr/bin/env bash
PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
PROJECT_SCRIPTS_DIR="$PROJECT_ROOT_DIR/scripts"

echo "Pre-commit Tests..."
$PROJECT_SCRIPTS_DIR/all_tests.sh
ALL_TESTS_RESULT=$?

if [ $ALL_TESTS_RESULT -ne 0 ]; then
	echo "Test failure, cannot commit."
	exit 1;
fi

exit 0;
