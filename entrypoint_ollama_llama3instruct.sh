#!/bin/sh

ollama serve &

SERVER_PID=$!

sleep 10

ollama pull llama3:instruct
ollama pull nomic-text-embed

wait $SERVER_PID