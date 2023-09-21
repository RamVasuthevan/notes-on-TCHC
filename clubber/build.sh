#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Move up one directory to the parent
cd ..

echo $(pwd)

# Now, run pandoc with the adjusted paths
/usr/bin/pandoc website/index.markdown --standalone --from=markdown --to=html --include-in-header=website/template/header.html --output=website/index.html --css=website/template/style.css
