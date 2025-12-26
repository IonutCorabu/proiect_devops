#!/bin/bash

echo "--- 🚀 Pregatesc lansarea aplicatiei ---"

echo "1. Ma deplasez in folderul backend..."
cd ~/proiect_devops/backend

echo "2. Verific daca serverul este acolo..."
if [ -f "server.py" ]; then
    echo "✅ Fisier gasit! Pornesc motorul..."
    # Aici folosim 'python' simplu pentru ca esti pe Windows
    python server.py
else
    echo "❌ Eroare: Nu gasesc fisierul server.py!"
fi
