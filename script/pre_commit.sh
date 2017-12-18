#!/usr/bin/env bash
PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"
PROJECT_SCRIPTS_DIR="$PROJECT_ROOT_DIR/script"

printf "Pre-commit Tests...\n"
"$PROJECT_SCRIPTS_DIR/all_tests.sh"
ALL_TESTS_RESULT="$?"

if [ "$ALL_TESTS_RESULT" -ne 0 ]; then
    >&2 printf "Test failure, cannot commit.\n"
	exit 1;
fi

printf "Done.\n"
exit 0;
