#!/bin/bash

echo ""
echo "============================================="
echo "  FS EXAM KIT - Quick Start Launcher"
echo "============================================="
echo ""
echo "Select a template to launch:"
echo "  1. CRUD Template        (Items Manager)"
echo "  2. Auth Template        (Login / Signup)"
echo "  3. Blog Template        (Posts App)"
echo "  4. Upload Template      (File Upload)"
echo ""
read -p "Enter number (1-4): " choice

case $choice in
  1) TEMPLATE="crud-template";   NAME="CRUD Template" ;;
  2) TEMPLATE="auth-template";   NAME="Auth Template" ;;
  3) TEMPLATE="blog-template";   NAME="Blog Template" ;;
  4) TEMPLATE="upload-template"; NAME="Upload Template" ;;
  *) TEMPLATE="crud-template";   NAME="CRUD Template" ;;
esac

echo ""
echo "============================================="
echo "  Launching: $NAME"
echo "============================================="
echo ""

cd "$TEMPLATE" || exit

echo "[1/2] Installing dependencies..."
npm install

echo ""
echo "[2/2] Starting server..."
echo ""
echo "  Open your browser at: http://localhost:3000"
echo "  Press Ctrl+C to stop the server."
echo ""

node server.js
