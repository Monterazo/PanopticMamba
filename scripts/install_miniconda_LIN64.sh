#!/bin/bash
# This script installs Miniconda on a Linux x86_64 system.

INSTALL_DIR="$HOME/miniconda3"

echo "[1/4] Creating directory..."
mkdir -p "$INSTALL_DIR"

echo "[2/4] Downloading the latest verion..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O "$INSTALL_DIR/miniconda.sh"

echo "[3/4] Installing Miniconda..."
bash "$INSTALL_DIR/miniconda.sh" -b -u -p "$INSTALL_DIR"

# Removes the installer script
rm "$INSTALL_DIR/miniconda.sh"

echo "[4/4] Activating..."
source "$INSTALL_DIR/bin/activate"

echo "✅ Miniconda succesfully installed at $INSTALL_DIR"
echo "RECOMENDATION: Restart your terminal to avoid any issues."