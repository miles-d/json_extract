#!/usr/bin/env bash

RESULT="$(cat sample.json | ./json_extract 'glossary.GlossDiv.GlossList.GlossEntry.Gloss Def.GlossSeeAlso.0')"

if [[ "$RESULT" = '"GML"' ]]; then
    echo "TESTS PASS"
else
    echo "FAIL"
    exit 1
fi
