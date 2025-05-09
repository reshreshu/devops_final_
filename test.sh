#!/bin/bash
echo "Running basic test..."
if grep -q "<h1>" index.html; then
  echo "Test Passed"
  exit 0
else
  echo "Test Failed"
  exit 1
fi
