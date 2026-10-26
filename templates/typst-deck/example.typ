#import "academic_deck.typ": *

#show: deck-init

// ==========================================
// SLIDE 1: Two-Column Card Layout with Pipeline
// ==========================================
#slide-header(
  card-num: "01",
  total-cards: "3",
  title: "Physical Pin, Lifecycle Flows, and Workforce Profile",
  subtitle: "Mapping Cross-Border Supply Chains and Regional Infrastructure",
  author: "Arika Khor",
  tags: ("CS 5083 AI Ethics", "Data Supply Chains")
)

#callout-banner(
  title: "The Core Stake (Why Care): ",
  text-body: "Clean digital interfaces and automated AI filters are subsidized by low-wage workers reviewing graphic queues under 15-second quotas, only to be laid off once their annotations train automated models."
)

#v(0.3em)

#grid(
  columns: (1.05fr, 0.95fr),
  rows: (198pt),
  gutter: 10pt,
  section-box(title: "1. Frontline Delivery Floor", subtitle: "Physical Operations")[
    - *Site:* Regional Data Delivery Center, Bangsar South, Kuala Lumpur (#data-chip("3.1114° N, 101.6669° E")).
    - *Operation:* Frontline facility operating 24/7 rotating shifts processing uncurated multimedia content.
    - *Workforce:* Multilingual young professionals earning \$600 to \$900 USD/month under automated quota surveillance.
    - *Externalities:* High turnover, cognitive fatigue, and acute occupational trauma.
  ],
  section-box(title: "2. Corporate Capital & Headquarters", subtitle: "Financial & Policy Node")[
    - *Platform:* Global parent company headquartered at One Raffles Quay, Singapore (#data-chip("1.2818° N, 103.8526° E")).
    - *Vendor:* Third-party BPO service provider handling facility management and absorbing employer liability.
    - *Arbitrage:* Capital and intellectual property stay anchored in high-income hubs; labor costs and psychological trauma are externalized across borders.
  ]
)

#v(0.3em)

#pipeline-strip(steps: (
  ("Corporate HQ", "Policy & Venture Capital"),
  ("BPO Vendor", "Floor Management"),
  ("Delivery Center", "Human Annotation & RLHF"),
  ("Automated Models", "Production Deployment")
))

#slide-footer(text-left: "CS 5083 Ethical and Responsible AI | University of Oklahoma", page-num: "1 / 3")

#pagebreak()

// ==========================================
// SLIDE 2: Metric Hero Banner & Governance Grid
// ==========================================
#slide-header(
  card-num: "02",
  total-cards: "3",
  title: "Governance, Empirical Metrics, and Supply Chain Opacity",
  subtitle: "Labor Regulation, Automation Paradox, and Corporate Secrecy",
  author: "Arika Khor",
  tags: ("Governance", "Impact Verification")
)

#metric-hero(
  stat: "500+ Workers",
  stat-subtitle: "Terminated in Single Wave",
  date-tag: "October 2024 Restructuring Wave",
  headline: "The Automation Substitution Paradox",
  body-text: "Eliminated over 500 content moderation positions as operations shifted to automated AI safety models. Over 80% of violating content is now removed automatically by models trained on these workers' prior annotations. Human workers trained the systems that replaced them."
)

#v(0.35em)

#grid(
  columns: (1fr, 1fr),
  rows: (242pt),
  gutter: 10pt,
  section-box(title: "Governing Laws and Regulatory Gaps", subtitle: "Statutory Scope")[
    - *Labor:* Governed under standard employment acts regulating contracts, working hours, and severance notice.
    - *Content:* Governed under multimedia and communications statutes penalizing online transmission of offensive content.
    - *Gaps:* Physical safety is mandated, but digital cognitive harm, pacing quotas, and vicarious trauma remain unregulated.
    - *Liability:* Vendor subcontracts legally insulate platform parents from direct employer liabilities.
  ],
  section-box(title: "Supply Chain Opacity and Missing Data", subtitle: "Systemic Concealment")[
    - *NDAs:* Strict confidentiality agreements prohibit contractors from disclosing clients, guidelines, or quotas.
    - *Arbitrage:* Financial secrecy conceals the wide profit spread between parent billing rates and vendor wages.
    - *Telemetry:* Long-term psychiatric outcomes and employee mental health metrics are omitted from public CSR disclosures.
    - *Representation:* Frontline workers possess zero collective bargaining representation.
  ]
)

#slide-footer(text-left: "CS 5083 Ethical and Responsible AI | University of Oklahoma", page-num: "2 / 3")

#pagebreak()

// ==========================================
// SLIDE 3: 3-Column Comparative Audit & References
// ==========================================
#slide-header(
  card-num: "03",
  total-cards: "3",
  title: "Generative AI Comparative Audit & Academic References",
  subtitle: "Auditing Commercial LLMs Against Empirical Evidence and Graduate Literature",
  author: "Arika Khor",
  tags: ("AI Audit", "Literature Grounding")
)

#callout-banner(
  title: "AUDIT STACK ARCHITECTURE: ",
  text-body: "Multi-agent audit pipeline combining Gemini high-reasoning runner, Hermes/Jev deterministic defense gates, and an autonomous ClearSet research swarm verifying SEC filings and official government databases.",
  accent: rgb("#0284c7")
)

#v(0.3em)

#audit-grid(
  left-title: "1. What It Got Right",
  left-body: [
    - *Outsourcing:* Correctly identified outsourced labor delivery centers in Southeast Asia.
    - *Headquarters:* Accurately cited regional management and financial hubs.
  ],
  mid-title: "2. What It Hallucinated",
  mid-body: [
    - *PR:* Parroted corporate claims of competitive tech salaries and comprehensive psychological wellness care.
    - *Quotas:* Erased brutal daily review quotas and sub-15-second review pacing.
  ],
  right-title: "3. What It Missed",
  right-body: [
    - *Layoffs:* Completely missed the October 2024 mass layoff of 500+ workers replaced by AI.
    - *Extraction:* Failed to analyze the cross-border capital extraction pipeline.
  ],
  height: 114pt
)

#v(0.3em)

#section-box(title: "Graduate Academic References", subtitle: "CS 5083 Standard", height: auto)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #meta-tag("Critical Theory")
      - *Crawford, Kate (2021):* Atlas of AI: Power, Politics, and Planetary Costs. Yale University Press.
      #v(0.15em)
      #meta-tag("Ethnography")
      - *Roberts, Sarah T. (2019):* Behind the Screen: Content Moderation in the Shadows of Social Media. Yale University Press.
    ],
    [
      #meta-tag("Investigative Journalism")
      - *Latiff, Rozanna, and Danial Azhar (2024):* ByteDance lays off hundreds of staff in Malaysia as it shifts toward AI moderation. Reuters.
      #v(0.15em)
      #meta-tag("SEC Regulatory Filing")
      - *TDCX Inc. (2023):* Form 20-F Annual Report. US Securities and Exchange Commission.
    ]
  )
]

#slide-footer(text-left: "CS 5083 Ethical and Responsible AI | University of Oklahoma", page-num: "3 / 3")
