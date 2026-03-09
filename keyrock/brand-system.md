# Keyrock Brand System — Chart Generation Reference

> Single source of truth for all Keyrock brand rules applied to chart and data-visualisation generation.
> Keyrock is an institutional digital asset market maker.

---

## 1. Colour Palette

Accent colours are **identical** across light and dark mode. Only background, text, and structural colours change.

### 1.1 Accent Colours (Universal)

| Token | Hex | Usage |
|---|---|---|
| ACCENT_TEAL | `#00C9A7` | Primary accent |
| ACCENT_BLUE | `#3B82F6` | Secondary accent |
| ACCENT_AMBER | `#F59E0B` | Highlight / attention |
| ACCENT_CORAL | `#EF4444` | Risk / warning / negative (fill/shading) |
| ACCENT_DEEP_RED | `#8B0A0A` | Risk / warning / negative (lines, default red line colour) |
| ACCENT_PURPLE | `#8B5CF6` | Additional category |
| ACCENT_GREEN | `#10B981` | Positive / success |

### 1.2 Light Mode (DEFAULT)

| Token | Hex | Usage |
|---|---|---|
| BG_LIGHT | `#FFFFFF` | Primary background |
| BG_PANEL_LIGHT | `#F8FAFC` | Card / panel background |
| BG_CARD_LIGHT | `#F1F5F9` | Elevated surface |
| TEXT_PRIMARY_LIGHT | `#171717` | Primary text (matches logo black) |
| TEXT_SECONDARY_LIGHT | `#64748B` | Secondary text |
| TEXT_MUTED_LIGHT | `#94A3B8` | Muted text |
| GRID_COLOR_LIGHT | `#E2E8F0` | Gridlines |
| BORDER_COLOR_LIGHT | `#CBD5E1` | Borders / axes |

### 1.3 Dark Mode

| Token | Hex | Usage |
|---|---|---|
| BG_DARK | `#0B1A2E` | Primary background |
| BG_PANEL | `#122240` | Card / panel background |
| BG_CARD | `#1A2D4A` | Elevated surface |
| TEXT_PRIMARY | `#FFFFFF` | Primary text |
| TEXT_SECONDARY | `#94A3B8` | Secondary text |
| TEXT_MUTED | `#64748B` | Muted text |
| GRID_COLOR | `#1E3A5F` | Gridlines |
| BORDER_COLOR | `#2D4A6F` | Borders / axes |

### 1.4 Extended Palette (Preferred for Multi-Category Charts)

When a chart has **many categories or series** (5+), prefer this palette first. These colours are drawn from Keyrock's research visual identity and provide a cohesive, institutional feel when used together.

| Token | Hex | Reference |
|---|---|---|
| EXT_PERIWINKLE | `#B0C2FF` | Soft blue-purple |
| EXT_CORNFLOWER | `#3867FF` | Medium blue |
| EXT_SLATE | `#303052` | Dark blue-grey |
| EXT_ORCHID | `#A580FF` | Warm purple |
| EXT_ORANGE | `#FF7800` | Warm orange |

**Usage rule:** For charts with many categories, use `CHART_COLORS_EXTENDED` as the primary cycle. This palette is designed to feel harmonious across 5–12 data series. For charts with fewer categories (2–4), continue using the standard accent colours (teal, blue, amber, etc.). The extended palette may be combined with the standard accents if more than 5 colours are needed — append standard accents after the extended set.

### 1.5 Status Colours

| Token | Hex | Meaning |
|---|---|---|
| STATUS_LIVE | `#10B981` | Live / active |
| STATUS_PILOT | `#F59E0B` | Pilot / in progress |
| STATUS_ANNOUNCED | `#64748B` | Announced / pending |

---

## 2. Typography

| Element | Style | Case | Colour |
|---|---|---|---|
| Title | Large, bold, centred | Title Case | TEXT_PRIMARY |
| Subtitle | Medium, regular (optional — not required by default) | Sentence case | TEXT_SECONDARY |
| Body / labels | Regular | Sentence case | TEXT_PRIMARY |
| Axis labels | Regular | Sentence case | TEXT_SECONDARY |
| Tick labels | Small–regular | As data dictates | TEXT_SECONDARY |
| Source line | Small | Sentence case | TEXT_MUTED |

### Font Stack

- **Primary:** Inter
- **Fallback chain:** Helvetica Neue, Helvetica, Arial, DejaVu Sans
- **Condensed contexts:** Inter Tight may be used

### Headline Style

Bold, punchy headlines are preferred. Keep titles concise and informative.

---

## 3. Logo

### Files

Located in `~/.claude/keyrock/assets/`:

| File | Mode |
|---|---|
| `keyrock-logo-black.svg` | Light mode |
| `keyrock-logo-black.png` | Light mode |
| `keyrock-logo-white.svg` | Dark mode |
| `keyrock-logo-white.png` | Dark mode |

### Placement Rules

- **Default position:** Bottom-right corner
- **Size:** Approximately 8–10% of chart width
- **Clear space:** At least 10px from all chart edges
- **Always embedded** in output by default
- Logo brand black is `#171717`

### Mode Selection

- Light mode charts: use **black** logo variant
- Dark mode charts: use **white** logo variant

---

## 4. Source Lines

- **Default text:** "Source: Keyrock Research"
- User may override with a specific source string
- **Position:** Far-left of the chart (x=0.01), bottom
- **Format:** Small, muted text colour
- Encouraged by default; user can request omission

---

## 5. Number Formatting

| Scale | Format | Example |
|---|---|---|
| Trillions | `$X.XT` | $1.5T |
| Billions | `$X.XB` | $1.2B |
| Millions | `$X.XM` or `$XXXM` | $340M |
| Full numbers | Comma-separated thousands | $1,250,000 |

- **One decimal maximum** for abbreviated numbers
- Always prefix financial data with `$` (USD assumed unless stated)

---

## 6. Design Direction

### Do

- Institutional, clean, modern, understated
- Credible, polished, brand-consistent
- Balanced whitespace
- Subtle gridlines (low alpha)
- Branded but not loud

### Do Not

- Flashy or decorative
- Generic startup / SaaS aesthetic
- Overly busy annotations or ornaments
- Loud colour usage without purpose

---

## 7. Chart Colour Assignment Rules

Colours are assigned in this priority order:

1. **Semantic meaning first** — green for positive, coral for negative, amber for warning/attention
2. **Contrast and readability** — ensure legibility against the background
3. **Primary data series:** ACCENT_BLUE (`#3B82F6`) or ACCENT_TEAL (`#00C9A7`)
4. **Secondary series:** Next in hierarchy — amber, purple, green, coral
5. **Sequential / gradient data:** Single hue with varying opacity
6. **Categorical data (2–4 series):** Cycle through standard accents: teal, blue, amber, green, purple, coral
7. **Categorical data (5+ series):** Prefer `CHART_COLORS_EXTENDED` (periwinkle, cornflower, slate, orchid, orange) — these provide a more cohesive, institutional feel for many-category charts. Append standard accents if more colours are needed.
8. **Never** use background or text colours for data series
8. **Positive/negative pairs** may use green/coral where contextually appropriate

---

## 8. Layout Rules

### Margins and Spacing

- Margins: Generous but not wasteful
- Title padding: 15–20px above chart area
- Logo clear space: At least 10px from chart edges
- Source line: Below chart area, left-aligned

### Legend

Placement varies by chart type (refer to `chart-templates.md` for specifics).

### Aspect Ratios (Context-Adaptive)

| Context | Dimensions | Ratio |
|---|---|---|
| PDF report full-width | ~1200 x 700 | ~1.7:1 (landscape) |
| PDF report half-width | ~600 x 450 | ~1.33:1 (slightly taller) |
| Slide | ~1920 x 1080 | 16:9 |
| Social / web | ~1200 x 630 | ~2:1 |
| Square (social) | 1080 x 1080 | 1:1 |

---

## 9. Annotation Rules

- Use annotations **only when they add clarity** — do not over-annotate
- If legend and axis labels communicate the message, annotations may not be needed

### Style Guidelines

| Element | Rule |
|---|---|
| Arrow colour | Match the annotated data series, or use TEXT_SECONDARY |
| Label font size | Slightly smaller than axis labels |
| Leader lines | Thin (1–1.5px), accent or secondary colour |
| Callout boxes | BG_PANEL or BG_CARD background with accent-coloured border |
| Overall | Clean, not busy or cluttered |

---

## 10. Accessibility

- Ensure sufficient contrast between data colours and background
- All accent colours provide adequate contrast on both `#FFFFFF` (light) and `#0B1A2E` (dark)
- When using red/green together, add **pattern or marker differentiation** for colour-blind friendliness

---

## 11. Matplotlib Global Defaults (Python)

Every generated chart script must begin with this setup block.

### 11.1 Light Mode Setup (Default)

```python
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import numpy as np
import os

# === KEYROCK BRAND PALETTE — LIGHT MODE (DEFAULT) ===
BG = '#FFFFFF'
BG_PANEL = '#F8FAFC'
BG_CARD = '#F1F5F9'
TEXT_PRIMARY = '#171717'
TEXT_SECONDARY = '#64748B'
TEXT_MUTED = '#94A3B8'
GRID_COLOR = '#E2E8F0'
BORDER_COLOR = '#CBD5E1'

# Accent colours (same for light and dark)
TEAL = '#00C9A7'
BLUE = '#3B82F6'
AMBER = '#F59E0B'
CORAL = '#EF4444'
DEEP_RED = '#8B0A0A'
PURPLE = '#8B5CF6'
GREEN = '#10B981'

# Extended palette (preferred for 5+ category charts)
PERIWINKLE = '#B0C2FF'
CORNFLOWER = '#3867FF'
SLATE = '#303052'
ORCHID = '#A580FF'
ORANGE = '#FF7800'

# Chart colour cycles
CHART_COLORS = [TEAL, BLUE, AMBER, GREEN, PURPLE, CORAL]
CHART_COLORS_EXTENDED = [PERIWINKLE, CORNFLOWER, SLATE, ORCHID, ORANGE, TEAL, BLUE, AMBER, GREEN, PURPLE, CORAL]

plt.rcParams.update({
    'font.family': 'sans-serif',
    'font.sans-serif': ['Inter', 'Helvetica Neue', 'Helvetica', 'Arial', 'DejaVu Sans'],
    'font.size': 11,
    'text.color': TEXT_PRIMARY,
    'axes.facecolor': BG,
    'figure.facecolor': BG,
    'axes.edgecolor': BORDER_COLOR,
    'axes.labelcolor': TEXT_PRIMARY,
    'xtick.color': TEXT_SECONDARY,
    'ytick.color': TEXT_SECONDARY,
    'grid.color': GRID_COLOR,
    'grid.alpha': 0.5,
})

LOGO_PATH = os.path.expanduser('~/.claude/keyrock/assets/keyrock-logo-black.png')
```

### 11.2 Dark Mode Override

When dark mode is requested, apply this block **after** the light mode setup:

```python
# === DARK MODE OVERRIDE ===
BG = '#0B1A2E'
BG_PANEL = '#122240'
BG_CARD = '#1A2D4A'
TEXT_PRIMARY = '#FFFFFF'
TEXT_SECONDARY = '#94A3B8'
TEXT_MUTED = '#64748B'
GRID_COLOR = '#1E3A5F'
BORDER_COLOR = '#2D4A6F'

plt.rcParams.update({
    'text.color': TEXT_PRIMARY,
    'axes.facecolor': BG,
    'figure.facecolor': BG,
    'axes.edgecolor': BORDER_COLOR,
    'axes.labelcolor': TEXT_PRIMARY,
    'xtick.color': TEXT_SECONDARY,
    'ytick.color': TEXT_SECONDARY,
    'grid.color': GRID_COLOR,
    'grid.alpha': 0.3,
})

LOGO_PATH = os.path.expanduser('~/.claude/keyrock/assets/keyrock-logo-white.png')
```

---

## 12. Logo Placement Pattern (matplotlib)

```python
def add_keyrock_logo(fig, logo_path=LOGO_PATH, size=0.08, position='bottom-right', padding=0.02):
    """Add Keyrock logo to chart. size is fraction of figure width."""
    try:
        logo = mpimg.imread(logo_path)
        aspect = logo.shape[1] / logo.shape[0]  # width/height
        logo_width = size
        logo_height = logo_width / aspect * (fig.get_figwidth() / fig.get_figheight())

        if position == 'bottom-right':
            x = 1 - padding - logo_width
            y = padding
        elif position == 'bottom-left':
            x = padding
            y = padding
        elif position == 'top-right':
            x = 1 - padding - logo_width
            y = 1 - padding - logo_height
        elif position == 'top-left':
            x = padding
            y = 1 - padding - logo_height

        logo_ax = fig.add_axes([x, y, logo_width, logo_height])
        logo_ax.imshow(logo)
        logo_ax.axis('off')
    except FileNotFoundError:
        pass  # Skip logo if file not found
```

---

## 13. Export Pattern (matplotlib)

```python
def export_chart(fig, name, output_dir='.', dpi=250, formats=('svg', 'png', 'pdf')):
    """Export chart in multiple formats. SVG is master."""
    os.makedirs(output_dir, exist_ok=True)
    for fmt in formats:
        path = os.path.join(output_dir, f'{name}.{fmt}')
        fig.savefig(path, dpi=dpi, bbox_inches='tight',
                    facecolor=fig.get_facecolor(), edgecolor='none',
                    format=fmt)
    plt.close(fig)
```

---

## Quick Reference — Colour Hex Cheat Sheet

```
Standard Accents:
TEAL       #00C9A7     Primary accent
BLUE       #3B82F6     Secondary accent
AMBER      #F59E0B     Highlight / attention
CORAL      #EF4444     Risk / warning / negative (fill/shading)
DEEP_RED   #8B0A0A     Risk / warning / negative (lines)
PURPLE     #8B5CF6     Additional category
GREEN      #10B981     Positive / success

Extended Palette (preferred for 5+ categories):
PERIWINKLE #B0C2FF     Soft blue-purple
CORNFLOWER #3867FF     Medium blue
SLATE      #303052     Dark blue-grey
ORCHID     #A580FF     Warm purple
ORANGE     #FF7800     Warm orange

Light BG   #FFFFFF     Dark BG    #0B1A2E
Light Text #171717     Dark Text  #FFFFFF
```
