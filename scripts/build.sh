#!/bin/sh
cd "$(dirname "$0")"

mkdir -p ../build
node ./spritezero.js ../build/sprite ../icons/
echo "Done!"
