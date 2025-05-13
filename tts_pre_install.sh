#!/bin/bash

echo "🔧 Starting TTS setup..."

# Exit on any error
set -e

# 1. Clone IndicTransToolkit if not already present
if [ ! -d "IndicTransToolkit" ]; then
  echo "📥 Cloning IndicTransToolkit..."
  git clone https://github.com/VarunGumma/IndicTransToolkit.git
else
  echo "📁 IndicTransToolkit already exists. Skipping clone."
fi

# 2. Install Python dependencies for IndicTransToolkit
cd IndicTransToolkit
pip install --editable ./
cd ..

# 3. Install other app-level dependencies
echo "📦 Installing additional app dependencies..."
pip install parler_tts playsound flask requests python-dotenv wordninja cryptography
pip install google-api-python-client google-auth-httplib2 google-auth-oauthlib

echo "✅ Completed setting up the tts module"
