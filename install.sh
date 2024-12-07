#!/bin/bash

# # Determine directory where script is located
# SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

# DEST_DIR="/usr/share/texmf/tex/latex"

# # Make sure directory exists
# if [ ! -d "$DEST_DIR" ]; then
#   echo "Error: Destination directory $DEST_DIR does not exist."
#   exit 1
# fi

# # Copy all files from the source directory to the destination directory
# cp "$SOURCE_DIR"/"cbc_binary_tikz.sty" "$DEST_DIR"
# cp "$SOURCE_DIR"/"cbc_frames_tikz.sty" "$DEST_DIR"
# cp "$SOURCE_DIR"/"earth_tikz.sty" "$DEST_DIR"

# echo "Files have been copied from $SOURCE_DIR to $DEST_DIR."


SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "export TEXINPUTS=':$SOURCE_DIR'" >> ~/.bashrc

echo "Updated TEXINPUTS."
