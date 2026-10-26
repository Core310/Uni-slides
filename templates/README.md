# Uni-slides Presentation Templates

Reusable presentation engines designed for university coursework, graduate research, and technical defenses.

## Available Engines

| Engine | Best For | Output Format | Location |
| :--- | :--- | :--- | :--- |
| **Typst Academic Deck** | Coursework turn-ins, assignment slide cards, PDF uploads | Static 16:9 PDF | [`typst-deck/`](typst-deck/) |
| **Reveal.js Deck** | Live browser presentations, lecture slides, interactive web decks | Standalone HTML | [`revealjs-deck/`](revealjs-deck/) |

---

### 1. Typst Academic Deck (`typst-deck/`)

- **When to use**: Assignments requiring PDF slide submissions (e.g. Canvas uploads, Dr. Cool's AI Sustainability cards).
- **Key benefits**: Pixel-perfect typography, strict page-boundary enforcement, reproducible compilation via `typst compile`.
- **Core files**:
  - `academic_deck.typ`: Modular library containing headers, footers, callouts, metric hero banners, and audit grids.
  - `example.typ`: Reference 3-slide implementation.

### 2. Reveal.js Deck (`revealjs-deck/`)

- **When to use**: In-person presentations, live lectures, or website hosting on GitHub Pages.
- **Key benefits**: Interactive dual-window speaker notes (press `S`), dark city parallax theme, zero-build execution in any modern browser.
- **Core files**:
  - `template.html`: Standalone Reveal.js 5.1.0 template with synchronized presenter console.
