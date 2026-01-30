#!/bin/bash
# Build script for Spirit CSS
# Creates spirit.css (bundled) and spirit.min.css (minified)

set -e

# Output files
OUTPUT="spirit.css"
OUTPUT_MIN="spirit.min.css"

# CSS files in dependency order
CSS_FILES=(
    "css/normalize.css"
    "css/variables.css"
    "css/elements.css"
    "css/layout.css"
    "css/button.css"
    "css/form.css"
    "css/dialog.css"
    "css/main.css"
    "css/utils.css"
)

echo "Building Spirit CSS..."

# Concatenate all CSS files
> "$OUTPUT"
for file in "${CSS_FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo "/* === $file === */" >> "$OUTPUT"
        cat "$file" >> "$OUTPUT"
        echo "" >> "$OUTPUT"
    else
        echo "Warning: $file not found, skipping..."
    fi
done

echo "Created $OUTPUT ($(wc -c < "$OUTPUT") bytes)"

# Minify: remove comments, extra whitespace, and newlines
# This is a simple minifier that doesn't require Node.js
sed -e 's/\/\*[^*]*\*\+\([^/*][^*]*\*\+\)*\///g' \
    -e 's/^[[:space:]]*//g' \
    -e 's/[[:space:]]*$//g' \
    -e 's/[[:space:]]*{[[:space:]]*/{/g' \
    -e 's/[[:space:]]*}[[:space:]]*/}/g' \
    -e 's/[[:space:]]*:[[:space:]]*/:/g' \
    -e 's/[[:space:]]*;[[:space:]]*/;/g' \
    -e 's/[[:space:]]*,[[:space:]]*/,/g' \
    "$OUTPUT" | tr -d '\n' | sed 's/}}/}\n}/g' > "$OUTPUT_MIN"

echo "Created $OUTPUT_MIN ($(wc -c < "$OUTPUT_MIN") bytes)"
echo "Done!"
