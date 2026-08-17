#!/bin/sh
set -e

# Simple test runner
make all
./bin/main
./bin/hello

echo "Tests ran successfully"
