#!/bin/sh

test_description='git mergetool

Testing basic merge tools options'

TEST_PASSES_SANITIZE_LEAK=true
. ./test-lib.sh

test_expect_success 'mergetool --tool=vimdiff creates the expected layout' '
	. "$GIT_BUILD_DIR"/mergetools/vimdiff &&
	run_unit_tests_layout
'

test_expect_success 'mergetool --tool=vimdiff verification of merge_cmd' '
	. "$GIT_BUILD_DIR"/mergetools/vimdiff &&
	run_unit_tests_merge_cmd
'

test_expect_success 'mergetool --tool=vimdiff creates the expected tool path' '
	. "$GIT_BUILD_DIR"/mergetools/vimdiff &&
	run_unit_tests_tool_path
'

test_done
