#!/bin/bash

# Assignment 3 - Setup Script
# This script sets up a Python virtual environment and installs dependencies for Task 1

echo "=========================================="
echo "Assignment 3 - Environment Setup"
echo "Task 1: Apriori Algorithm"
echo "=========================================="

# Check if Python 3 is available
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed."
    echo "Please install Python 3 and try again."
    exit 1
fi

echo "✓ Python 3 found: $(python3 --version)"

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo ""
    echo "Creating virtual environment..."
    python3 -m venv venv
    echo "✓ Virtual environment created"
else
    echo ""
    echo "✓ Virtual environment already exists"
fi

# Activate virtual environment
echo ""
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo ""
echo "Upgrading pip..."
pip install --upgrade pip --quiet

# Install requirements
echo ""
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

echo ""
echo "=========================================="
echo "✓ Setup complete!"
echo "=========================================="
echo ""
echo "Installed packages:"
echo "  - pandas, numpy (data manipulation)"
echo "  - mlxtend (Apriori algorithm)"
echo "  - matplotlib, seaborn (visualizations)"
echo "  - kagglehub (automatic dataset download)"
echo "  - jupyter, ipykernel (notebook support)"
echo ""
echo "Next steps:"
echo "  1. Activate environment: source venv/bin/activate"
echo "  2. Open notebook in Cursor and select venv interpreter"
echo "  3. Run the dataset download cell (uses kagglehub)"
echo "  4. Start implementing Task 1A"
echo ""
echo "Note: Dataset will be downloaded automatically in the notebook"
echo ""

