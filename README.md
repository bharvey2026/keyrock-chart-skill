# Keyrock Chart Skill

A custom Claude Code skill for generating branded research charts and diagrams following Keyrock brand guidelines.

## What it does

Type `/keyrock-chart` in Claude Code to generate institutional-quality charts from data files or plain-language descriptions. The skill handles:

- All standard chart types (bar, line, area, scatter, pie, heatmap, waterfall, combo)
- Diagrams (timelines, flowcharts, flywheels, scorecards, KPI cards, Sankey, treemaps)
- Keyrock brand colours, typography, and logo placement
- Light mode (default) and dark mode
- Multi-format export (SVG, PNG, PDF)
- Conversational iteration ("make the title shorter", "switch to dark mode")

## Install

```bash
git clone https://github.com/bharvey2026/keyrock-chart-skill.git
cd keyrock-chart-skill
chmod +x install.sh
./install.sh
```

### Optional: Install Inter font

For the best typographic results, install the Inter font family:

```bash
brew install --cask font-inter
python3 -c "import matplotlib; import shutil; shutil.rmtree(matplotlib.get_cachedir(), ignore_errors=True)"
```

The skill falls back to Helvetica Neue if Inter is not available.

### Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
- Python 3 with matplotlib (`pip install matplotlib`)
- Optional: `openpyxl` for Excel files (`pip install openpyxl`)

## Usage

```
/keyrock-chart Title: Monthly Trading Volume. Data: volume_data.csv. Bar chart.
```

```
/keyrock-chart Make a line chart from this CSV showing BTC price over time
```

```
/keyrock-chart Create a horizontal bar chart ranking exchanges by volume. Dark mode.
```

```
/keyrock-chart Timeline diagram showing regulatory milestones for 2026-2027
```

## What gets installed

```
~/.claude/
  commands/
    keyrock-chart.md              # The /keyrock-chart command
  keyrock/
    brand-system.md               # Brand rules (palette, typography, layout)
    chart-templates.md            # 19 chart type templates with matplotlib code
    assets/
      keyrock-logo-black.svg
      keyrock-logo-black.png
      keyrock-logo-white.svg
      keyrock-logo-white.png
```

## Uninstall

```bash
cd keyrock-chart-skill
chmod +x uninstall.sh
./uninstall.sh
```

## Updating

Pull the latest changes and re-run the install script:

```bash
cd keyrock-chart-skill
git pull
./install.sh
```
