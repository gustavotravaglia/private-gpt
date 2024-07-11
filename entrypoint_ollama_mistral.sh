#!/bin/sh

ollama serve &

SERVER_PID=$!

sleep 10

ollama pull mistral
ollama pull nomic-text-embed

wait $SERVER_PID