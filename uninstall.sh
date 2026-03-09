#!/bin/bash
set -e

echo "Uninstalling Keyrock Chart Skill..."

rm -f ~/.claude/commands/keyrock-chart.md
rm -rf ~/.claude/keyrock

echo "Keyrock Chart Skill uninstalled."
