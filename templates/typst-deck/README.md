# Academic Deck Template (Typst)

A modular, native Typst presentation library for university coursework, research briefs, and graduate presentations.

## Features

- **16:9 Widescreen Canvas**: Strict single-page slide bounds calibrated to prevent accidental page overflow.
- **Academic Typography**: Clean hierarchy using `Inter` and `DejaVu Sans Mono` with zero decorative SaaS badge clutter.
- **Modular Components**:
  - `slide-header`: Editorial title bar with course tags, author block, and bold accent line.
  - `slide-footer`: Subtle course metadata and bold page counter.
  - `callout-banner`: Left-accented takeaway banner for ethical stakes, thesis statements, or stack architecture.
  - `section-box`: Structured card containers with titles and subtitles.
  - `metric-hero`: Large impact stat banner with verified findings.
  - `pipeline-strip`: Horizontal causal and supply chain flow diagrams with arrows.
  - `audit-grid`: 3-column comparative audit grid (e.g. Valid, Hallucinated, Missed).
  - `data-chip`: Monospace chip for coordinates, wages, or technical parameters.

## Usage

Create a new file (e.g. `slides.typ`) and import the library:

```typst
#import "academic_deck.typ": *

#show: deck-init

#slide-header(
  card-num: "01",
  total-cards: "3",
  title: "Presentation Title",
  subtitle: "Subtitle describing core topic",
  author: "Arika Khor",
  tags: ("CS 5083", "Data Supply Chains")
)

#section-box(title: "Section Title", subtitle: "Context")[
  - *Topic:* Description here.
]

#slide-footer(text-left: "CS 5083 Ethical and Responsible AI", page-num: "1 / 3")
```

## Compilation

```bash
typst compile slides.typ slides.pdf
```
