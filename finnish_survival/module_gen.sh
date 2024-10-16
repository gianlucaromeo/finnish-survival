#!/bin/bash

createFolderWithGitkeep() {
    local path="$1"
    mkdir -p "$path" && touch "$path/.gitkeep"
}

if [ -z "$1" ]; then
  echo "Error: Folder name not provided."
  echo "Usage: $0 folder_name"
  exit 1
fi

FOLDER_NAME="$1"

cd lib/modules || exit

# Root folder
createFolderWithGitkeep "$FOLDER_NAME"

# Controllers
createFolderWithGitkeep "$FOLDER_NAME/controllers"

# Models
createFolderWithGitkeep "$FOLDER_NAME/models"

# Widgets
createFolderWithGitkeep "$FOLDER_NAME/widgets"

# Screens
createFolderWithGitkeep "$FOLDER_NAME/screens"

# Services
createFolderWithGitkeep "$FOLDER_NAME/services"

# Config
createFolderWithGitkeep "$FOLDER_NAME/config"


echo "New module's folders tree generated successfully."