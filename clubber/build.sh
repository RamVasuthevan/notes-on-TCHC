#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Move up one directory to the parent
cd ..

echo $(pwd)

# Ensure _site directory exists
mkdir -p website/_site

# Run pandoc with the adjusted paths
/usr/bin/pandoc website/index.markdown --standalone --from=markdown --to=html --include-in-header=website/template/header.html --output=website/_site/index.html --css=template/style.css

# Copy style.css to the _site directory
cp website/template/style.css website/_site/
