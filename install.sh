#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Keyrock Chart Skill..."

# Create directories
mkdir -p ~/.claude/commands
mkdir -p ~/.claude/keyrock/assets

# Copy command file
cp "$SCRIPT_DIR/commands/keyrock-chart.md" ~/.claude/commands/keyrock-chart.md

# Copy brand system and templates
cp "$SCRIPT_DIR/keyrock/brand-system.md" ~/.claude/keyrock/brand-system.md
cp "$SCRIPT_DIR/keyrock/chart-templates.md" ~/.claude/keyrock/chart-templates.md

# Copy logo assets
cp "$SCRIPT_DIR/keyrock/assets/"* ~/.claude/keyrock/assets/

echo ""
echo "Keyrock Chart Skill installed successfully."
echo ""
echo "Files installed:"
echo "  ~/.claude/commands/keyrock-chart.md"
echo "  ~/.claude/keyrock/brand-system.md"
echo "  ~/.claude/keyrock/chart-templates.md"
echo "  ~/.claude/keyrock/assets/ (4 logo files)"
echo ""
echo "Optional: Install Inter font for best results:"
echo "  brew install --cask font-inter"
echo "  python3 -c \"import matplotlib; import shutil; shutil.rmtree(matplotlib.get_cachedir(), ignore_errors=True)\""
echo ""
echo "Usage: Open Claude Code and type /keyrock-chart"
