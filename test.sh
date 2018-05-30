#!/usr/bin/env bash

RESULT="$(cat sample.json | json_extract first_level_key.second_level_key.1)"

if [[ "$RESULT" = '"bar"' ]]; then
    echo "TESTS PASS"
else
    echo "FAIL"
    exit 1
fi
