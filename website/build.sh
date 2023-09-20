#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

/usr/bin/pandoc index.markdown --standalone --from=markdown --to=html --include-in-header=header.html --output=index.html --css=style.css
