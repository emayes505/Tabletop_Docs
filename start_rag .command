#!/bin/bash

# Navigate to the directory where this script lives
cd "$(dirname "$0")"

# Activate virtual environment
source venv/bin/activate

# Start Ollama in the background (if not already running)
if ! pgrep -x "ollama" > /dev/null; then
  echo "Starting Ollama..."
  ollama serve &
  sleep 2
fi

# Open the browser after a short delay
(sleep 2 && open http://127.0.0.1:5000) &

# Start Flask
echo "Starting RAG Chat..."
python3 app.py
