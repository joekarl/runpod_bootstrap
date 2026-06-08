#!/bin/bash
# run.sh

# Start script 
# curl -sL https://raw.githubusercontent.com/joekarl/runpod_bootstrap/main/qwen_coder_boostrap.sh -o /qwen_coder_boostrap.sh && chmod +x /qwen_coder_boostrap.sh && bash /qwen_coder_boostrap.sh
# Container disk size: 18gb
# Volume disk size : 55gb
# Volume mount path : /workspace
# expose http 11434

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Start Ollama
ollama serve > /workspace/ollama.log 2>&1 &
sleep 5
ollama pull qwen3.6:35b
