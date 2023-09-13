#!/bin/bash

/usr/bin/pandoc index.markdown --standalone --from=markdown --to=html --include-in-header=header.html --output=index.html --css=style.css
