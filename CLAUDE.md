# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Common commands

- Compile the main academic CV template:
  - `typst compile --root . template/cv.typ`
- Watch the main template for live rebuilds:
  - `typst watch template/cv.typ`
- Compile the thumbnails for the README.md:
  - `typst compile --root . --format png template/cv.typ examples/thumbnail-{p}.png`
- Report common errors in Typst packages:
  - `typst-package-check check`

## Project structure

```
.
├── src/                   # Source code
│   ├── lib.typ           # Main library: resume layout, column helpers, entry/publication functions
│   └── icons.typ         # Academic social icons (Google Scholar, LinkedIn, GitHub, ORCID, X, link)
├── template/             # Template entry point
│   └── cv.typ            # CV template with filled content demonstrating all features
├── examples/             # Example outputs and assets
│   ├── cv.pdf            # Compiled CV example
│   └── thumbnail-*.png   # Thumbnails for documentation (1200px, 800px, 400px)
├── typst.toml            # Package metadata and configuration
├── README.md             # User documentation (features, usage, API reference)
├── CLAUDE.md             # AI assistant development guide
└── LICENSE               # MIT License
```

**Key files:**
- `typst.toml` — Defines package metadata (`acadennial-cv`), sets `src/lib.typ` as entrypoint, points template to `template/cv.typ` with thumbnail from `examples/`
- `src/lib.typ` — Core library with `resume()`, layout functions (`employment-head`, `meta-entry`, `pub-item`), list wrappers, and icon registry
- `src/icons.typ` — Icon definitions using SVG and scienceicons, with `configure-icon-registry()` for customization
- `template/cv.typ` — Working CV example with column configuration, function bindings, and all content sections (education, experience, publications, etc.)
- `examples/` — Generated outputs for documentation and package preview

## Package management and publishing

Use `typship` to manage and publish the package to the Typst Universe registry.

Key commands:
- Dev symlink for local testing: `typship dev`
- Clean existing dev symlinks: `typship clean`
- Install to local namespace: `typship install`
- Check package validity: `typship check`
- Login to registry (one-time setup): `typship login universe`
  - Requires a GitHub fine-grained personal access token with **Contents**, **Workflows**, and **Pull requests** permissions on your `typst/packages` fork
  - Token is saved to `~/Library/Application Support/typship/config.toml`
- Publish to Typst Universe: `typship publish universe`

## Typst documentation reference

- When working on Typst syntax or APIs, use the Context7 MCP tools to fetch current Typst documentation.
