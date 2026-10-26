// =============================================================================
// Academic Deck Typst Template Library
// Reusable 16:9 Presentation Engine for University Coursework & Briefings
// =============================================================================

#let deck-init(
  font: "Inter",
  mono-font: "DejaVu Sans Mono",
  size: 8.2pt,
  bg-color: rgb("#ffffff"),
  body
) = {
  set page(
    paper: "presentation-16-9",
    margin: (x: 1.2cm, top: 0.8cm, bottom: 0.8cm),
    fill: bg-color
  )
  set text(font: font, size: size, fill: rgb("#1e293b"))
  set par(justify: false, leading: 0.48em)
  body
}

// Metadata Tag
#let meta-tag(txt, fill: rgb("#f1f5f9"), stroke: rgb("#cbd5e1"), color: rgb("#334155")) = {
  box(
    fill: fill,
    stroke: 0.5pt + stroke,
    radius: 3pt,
    inset: (x: 5pt, y: 2pt),
    baseline: 0%,
    [#text(size: 6.8pt, weight: "bold", fill: color)[#txt]]
  )
}

// Monospace Data Chip
#let data-chip(txt, color: rgb("#0369a1"), font: "DejaVu Sans Mono") = {
  text(font: font, size: 7.5pt, weight: "bold", fill: color)[#txt]
}

// Slide Header
#let slide-header(
  card-num: "01",
  total-cards: "3",
  title: "Slide Title",
  subtitle: "Slide Subtitle Description",
  author: "Author Name",
  institution: "University of Oklahoma",
  term: "Fall 2026",
  tags: ("Course Tag", "Category Tag")
) = {
  block(width: 100%, below: 0.55em)[
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      [
        #grid(
          columns: (auto,) * (tags.len() + 1),
          gutter: 6pt,
          align: horizon,
          meta-tag("Card " + card-num + " of " + total-cards),
          ..tags.map(t => meta-tag(t))
        )
        #v(0.2em)
        #text(size: 13.5pt, weight: "bold", fill: rgb("#0f172a"))[#title]
        #v(-0.15em)
        #text(size: 8.2pt, fill: rgb("#475569"))[#subtitle]
      ],
      [
        #align(right)[
          #text(size: 8.5pt, weight: "bold", fill: rgb("#0f172a"))[#author]\
          #text(size: 7.2pt, fill: rgb("#64748b"))[#institution | #term]
        ]
      ]
    )
    #v(0.25em)
    #line(length: 100%, stroke: 1.2pt + rgb("#0f172a"))
  ]
}

// Slide Footer
#let slide-footer(text-left: "", page-num: "1 / 3") = {
  place(bottom, block(width: 100%)[
    #line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
    #v(0.2em)
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [#text(size: 6.8pt, fill: rgb("#64748b"))[#text-left]],
      [#text(size: 6.8pt, weight: "bold", fill: rgb("#0f172a"))[#page-num]]
    )
  ])
}

// Callout Banner (Top Stake / Key Takeaway)
#let callout-banner(title: "The Core Stake: ", text-body: "", accent: rgb("#0284c7"), fill: rgb("#f1f5f9")) = {
  rect(
    width: 100%,
    fill: fill,
    stroke: (left: 4pt + accent, rest: 1pt + rgb("#cbd5e1")),
    radius: (right: 4pt, left: 1pt),
    inset: (x: 10pt, y: 6pt)
  )[
    #text(weight: "bold", size: 8pt, fill: accent)[#title]
    #text(size: 7.8pt, fill: rgb("#1e293b"))[#text-body]
  ]
}

// Section Box (Card container)
#let section-box(title: "", subtitle: "", border-color: rgb("#94a3b8"), fill: rgb("#ffffff"), height: 100%, body) = {
  rect(
    width: 100%,
    height: height,
    fill: fill,
    stroke: 1pt + border-color,
    radius: 4pt,
    inset: (x: 10pt, y: 8pt)
  )[
    #if title != "" [
      #grid(
        columns: (1fr, auto),
        align: (left + horizon, right + horizon),
        [#text(weight: "bold", size: 9pt, fill: rgb("#0f172a"))[#title]],
        [#if subtitle != "" { text(size: 7pt, fill: rgb("#64748b"))[#subtitle] }]
      )
      #v(0.18em)
      #line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
      #v(0.28em)
    ]
    #body
  ]
}

// Metric Hero Banner (Big Stat Callout)
#let metric-hero(
  stat: "500+",
  stat-subtitle: "Impact Metric",
  date-tag: "October 2024",
  headline: "Empirical Finding Headline",
  body-text: "",
  stat-color: rgb("#b91c1c"),
  fill: rgb("#fef2f2"),
  stroke: rgb("#fecaca")
) = {
  rect(
    width: 100%,
    fill: fill,
    stroke: (left: 4pt + stat-color, rest: 1pt + stroke),
    radius: (right: 4pt, left: 1pt),
    inset: (x: 12pt, y: 8pt)
  )[
    #grid(
      columns: (170pt, 1fr),
      gutter: 14pt,
      align: horizon,
      [
        #text(size: 17pt, weight: "bold", fill: stat-color)[#stat]\
        #text(size: 8.5pt, weight: "bold", fill: rgb("#7f1d1d"))[#stat-subtitle]\
        #text(size: 6.8pt, fill: rgb("#991b1b"))[#date-tag]
      ],
      [
        #text(size: 7.8pt, fill: rgb("#7f1d1d"))[
          *#headline:*\ #body-text
        ]
      ]
    )
  ]
}

// Horizontal Pipeline Strip
#let pipeline-strip(steps: ()) = {
  let cols = ()
  let items = ()
  for (i, step) in steps.enumerate() {
    cols.push(1fr)
    items.push(
      text(size: 7.2pt, weight: "bold", fill: rgb("1e293b"))[#step.at(0)] +
      linebreak() +
      text(size: 6.2pt, fill: rgb("64748b"))[#step.at(1)]
    )
    if i < steps.len() - 1 {
      cols.push(auto)
      items.push(text(size: 8pt, fill: rgb("94a3b8"))[→])
    }
  }
  rect(
    width: 100%,
    fill: rgb("f8fafc"),
    stroke: 1pt + rgb("e2e8f0"),
    radius: 3pt,
    inset: (x: 8pt, y: 4.5pt)
  )[
    #grid(
      columns: cols,
      align: center + horizon,
      ..items
    )
  ]
}

// 3-Column Comparative Audit Grid
#let audit-grid(
  left-title: "1. What It Got Right",
  left-color: rgb("#059669"),
  left-body: [],
  mid-title: "2. What It Hallucinated",
  mid-color: rgb("#b91c1c"),
  mid-body: [],
  right-title: "3. What It Missed",
  right-color: rgb("#d97706"),
  right-body: [],
  height: 112pt
) = {
  grid(
    columns: (1fr, 1fr, 1fr),
    rows: (height),
    gutter: 8pt,
    rect(width: 100%, height: 100%, fill: rgb("#ffffff"), stroke: (top: 3pt + left-color, rest: 1pt + rgb("#cbd5e1")), radius: 4pt, inset: 8.5pt)[
      #text(weight: "bold", size: 8.5pt, fill: left-color)[#left-title]
      #v(0.25em)
      #left-body
    ],
    rect(width: 100%, height: 100%, fill: rgb("#ffffff"), stroke: (top: 3pt + mid-color, rest: 1pt + rgb("#cbd5e1")), radius: 4pt, inset: 8.5pt)[
      #text(weight: "bold", size: 8.5pt, fill: mid-color)[#mid-title]
      #v(0.25em)
      #mid-body
    ],
    rect(width: 100%, height: 100%, fill: rgb("#ffffff"), stroke: (top: 3pt + right-color, rest: 1pt + rgb("#cbd5e1")), radius: 4pt, inset: 8.5pt)[
      #text(weight: "bold", size: 8.5pt, fill: right-color)[#right-title]
      #v(0.25em)
      #right-body
    ]
  )
}
