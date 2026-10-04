#!/bin/bash

PROGRAM="./skill24"

echo "Running Skill 24 tests..."
echo "--------------------------"

if [ ! -f "$PROGRAM" ]; then
    echo "FAIL: Executable not found."
    exit 1
fi

OUTPUT=$($PROGRAM)

if echo "$OUTPUT" | grep -q "Repository validation successful."; then
    echo "PASS: Repository validation test"
else
    echo "FAIL: Repository validation test"
    exit 1
fi

if echo "$OUTPUT" | grep -q "Version: 1.0.0"; then
    echo "PASS: Version test"
else
    echo "FAIL: Version test"
    exit 1
fi

echo "--------------------------"
echo "All tests passed."
