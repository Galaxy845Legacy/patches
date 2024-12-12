#!/bin/bash
# Always execute in the script's directory
pushd "$(dirname "$(realpath "$0")")"
find . -name "*.patch" -printf "%h\n" | uniq | xargs -I{} bash -c "cd $(pwd)/../{}; git am $(pwd)/{}/*"
