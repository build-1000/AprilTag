#!/bin/bash
# Script to build (compile) the project.
# Clean existing build using "uninstall.sh".

# Go into the directory where this bash script is contained.
# doesn't work in windows, just enter director name instead when running the script
cd `dirname $0`

# Build (compile) the project and store output in the dedicated output directory.
# mkdir -p doesn't work in windows
# mkdir -p build
mkdir ~/Library/build
# cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo Successfully installed AprilTag library
