#!/bin/sh

set -e
cmake -S src -B src/build
cmake --build src/build
cd src/build && ctest
