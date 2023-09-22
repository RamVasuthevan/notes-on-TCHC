#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Move up one directory to the parent
cd ..

echo $(pwd)

# Ensure _site directory exists
mkdir -p website/_site

# Copy style.css to the _site directory
cp website/template/style.css website/_site/

# Run pandoc for each markdown file in the website directory
for file in website/*.markdown; do
    filename=$(basename -- "$file")
    base="${filename%.*}"
    /usr/bin/pandoc "$file" --standalone --from=markdown --to=html --include-in-header=website/template/header.html --output="website/_site/$base.html" --css=style.css
done
