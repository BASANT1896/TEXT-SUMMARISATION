#!/bin/bash
# Replace the ID with your Google Drive file ID
FILE_ID="YOUR_GOOGLE_DRIVE_FILE_ID"
URL="https://drive.google.com/uc?export=download&id=$FILE_ID"

echo "Downloading model from Google Drive..."
curl -L "$URL" -o model.zip
unzip model.zip -d ./model_folder
rm model.zip
echo "Model ready."