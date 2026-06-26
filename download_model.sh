#!/bin/bash

# Check if the model directory exists and has files in it
if [ -d "./saved_summary_model" ] && [ "$(ls -A ./saved_summary_model)" ]; then
    echo "Files already exist in saved_summary_model. Skipping download."
else
    echo "Downloading model files from Vercel Blob..."
    mkdir -p saved_summary_model

    # Use the URLs you obtained from the Vercel Dashboard
    curl -L "https://lkrg3it0vocdzglv.public.blob.vercel-storage.com/model.safetensors" -o saved_summary_model/model.safetensors
    curl -L "https://lkrg3it0vocdzglv.public.blob.vercel-storage.com/config.json" -o saved_summary_model/config.json
    curl -L "https://lkrg3it0vocdzglv.public.blob.vercel-storage.com/generation_config.json" -o saved_summary_model/generation_config.json
    curl -L "https://lkrg3it0vocdzglv.public.blob.vercel-storage.com/tokenizer.json" -o saved_summary_model/tokenizer.json
    curl -L "https://lkrg3it0vocdzglv.public.blob.vercel-storage.com/tokenizer_config.json" -o saved_summary_model/tokenizer_config.json

    echo "All files downloaded successfully."
fi
