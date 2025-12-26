#!/bin/bash

echo "--- 🚀 Pregatesc lansarea aplicatiei (Universal) ---"

echo "1. Ma deplasez in folderul backend..."
cd "$(dirname "$0")/backend"

echo "2. Verific daca serverul este acolo..."
if [ -f "server.py" ]; then
    echo "✅ Fisier gasit! Caut versiunea de Python..."
    
    # Aici e magia: verificam daca exista comanda 'python'
    if command -v python &> /dev/null; then
        echo "--> Am gasit 'python' (Standard Windows). Pornesc..."
        python server.py
    else
        echo "--> Nu am gasit 'python', incerc 'python3' (Mac/Linux)..."
        python3 server.py
    fi

else
    echo "❌ Eroare: Nu gasesc fișierul server.py!"
fi
