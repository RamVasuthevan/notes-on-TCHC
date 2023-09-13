#!/bin/bash

while inotifywait -e close_write index.markdown; do
    ./build.sh
done
