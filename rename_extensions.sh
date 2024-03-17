#!/bin/bash

# Function to convert Windows-style paths to Unix-style for Bash
convert_path() {
    if [[ "$1" =~ ^[a-zA-Z]: ]]; then
        # Convert the path from C:\... to /c/... and change backslashes to forward slashes
        local win_path=${1//[\\]/\/} # Replace all backslashes with forward slashes
        local drive_letter=${win_path:0:1}
        local lower_drive_letter=${drive_letter,,} # Convert to lowercase
        echo "/${lower_drive_letter}${win_path:2}" # Construct the path
    else
        echo "$1" # Return the original path if no conversion is needed
    fi
}

# Process the input
if [[ "$#" -ne 3 || "$2" != "+" ]]; then
    echo "Usage: $0 'C:\\path\\to\\folder' + extension"
    exit 1
fi

FOLDER_PATH=$(convert_path "$1")
NEW_EXTENSION="$3"

# Check if the folder exists
if [ ! -d "${FOLDER_PATH}" ]; then
    echo "The specified folder does not exist."
    exit 1
fi

# Loop through all files in the specified folder and rename them
for file in "${FOLDER_PATH}"/*.*; do
    if [ -f "$file" ]; then
        filename=$(basename -- "$file")
        mv -v "$file" "${file%.*}.${NEW_EXTENSION}"
    fi
done

echo "All files in ${FOLDER_PATH} have been renamed to the .${NEW_EXTENSION} extension."
