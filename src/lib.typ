#import "icons.typ": *

// default layout settings ratio
#let left-col-ratio = 15%
#let col-gutter = 1.2em

// Configure the icon registry with default colors.
#let configured-icons = configure-icon-registry(
  color: luma(20%),
  height: 0.95em,
  baseline: 20%,
)
#let google-scholar-icon = configured-icons.at("google-scholar-icon")
#let link-icon = configured-icons.at("link-icon")
#let linkedin-icon = configured-icons.at("linkedin-icon")
#let github-icon = configured-icons.at("github-icon")
#let orcid-icon = configured-icons.at("orcid-icon")
#let x-icon = configured-icons.at("x-icon")

// ============================================
// Two-column layout function.
// ============================================
#let cols(
  left-len,
  right-len,
  left-content,
  right-content,
  col-gutter: col-gutter,
  ) = {
    grid(
      columns: (left-len, right-len),
      column-gutter: col-gutter,
      left-content,
      right-content,
    )
}

#let lcol(left-len, right-len, content, col-gutter: col-gutter) = {
  cols(left-len, right-len, content, [], col-gutter: col-gutter)
}

#let rcol(left-len, right-len, content, col-gutter: col-gutter) = {
  cols(left-len, right-len, [], content, col-gutter: col-gutter)
}

// ============================================
// RESUME FUNCTION
// ============================================
#let resume(
  paper: "a4", // or "us-letter"
  margin: (left: 0.95in, right: 0.95in, top: 0.9in, bottom: 0.9in),
  font-args: (
    font-family: "Alegreya",
    font-size: 10pt,
    heading-font-family: "Helvetica",
    author-font-family: "Helvetica",
    author-font-size: 20pt,
    head-web-font-family: "Courier New",
    head-web-font-size: 0.95em,
  ),
  par-args: (
    leading: 0.55em,
    spacing: 1em,
  ),
  link-line-args: (
    stroke: 0.5pt + luma(200),
    offset: 2pt,
  ),
  // icon-args: (
  //   color: luma(20%),
  //   height: 0.95em,
  //   baseline: 20%,
  // ),
  left-col-ratio: left-col-ratio,
  author-info: (
    name: "John Doe",
    primary-info: [
      Assistant Professor \
      Department of Your Department \
      Building Name \
      Your University \
      City, Countryg
    ],
    secondary-info: [
      #link("mailto:your.email@university.edu")[your.email\@university.edu] \
      #link("https://www.yourwebsite.com")[https://www.yourwebsite.com] \ 
      #link("https://linkedin.com/in/your-linkedin-username")[#linkedin-icon()] #link("https://x.com/your-x-username")[#x-icon()] #link("https://scholar.google.com/citations?user=your-scholar-id")[#google-scholar-icon()] #link("https://github.com/your-github-username")[#github-icon()] #link("https://orcid.org/0000-0000-0000-0000")[#orcid-icon()]
    ],
  ),
  body,
) = {
  // ============================================
  // BASE SETTINGS
  // ============================================
  set document(author: author-info.name, title: author-info.name)

  set text(
    font: font-args.font-family,
    size: font-args.font-size,
    ligatures: false,
  )

  set page(
    paper: paper,
    margin: margin,
    footer: context { align(center)[#text(size: 0.9em)[#counter(page).display("1")]] },
  )

  set par(
    justify: true,
    first-line-indent: 0pt,
    leading: par-args.leading,
    spacing: par-args.spacing,
  )

  show par: it => {
    grid(
      columns: (left-col-ratio, 1fr),
      column-gutter: col-gutter,
      [], it,
    )
  }

  // ============================================
  // HEADING SETTINGS
  // ============================================
  show heading.where(level: 1): it => {
    set block(breakable: false, above: 1.2em, below: 0.8em)
    set text(font: font-args.author-font-family, size: font-args.author-font-size, weight: "bold")
    it
  }

  show heading.where(level: 2): it => {
    set block(breakable: false, above: 1.2em, below: 1em)
    set text(font: font-args.heading-font-family)
    it
  }

  show heading.where(level: 3): it => {
    set block(breakable: false, above: 1em, below: 1em)
    set text(style: "italic")
    set align(right)
    lcol(left-col-ratio, 1fr, [#it])
  }

  // ============================================
  // LINK SETTINGS
  // ============================================
  show link: it => {underline(stroke: link-line-args.stroke, offset: link-line-args.offset, it)}

  // ============================================
  // AUTHOR HEADER
  // ============================================
  block(below: 0.8em)[
    #heading(level: 1)[#author-info.name]
    #pad(left: 2em, right: 2em)[
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 2em,
        row-gutter: 0.15em,
        align: (left, right),
        author-info.primary-info,
        text(font: font-args.head-web-font-family, size: font-args.head-web-font-size)[#author-info.secondary-info],
      )
    ]
  ]

  // ============================================
  // BODY
  // ============================================
  body
}

// ============================================
// SUBHEADING FUNCTIONS
// ============================================
#let subhead(name, sub-info: none, left-col-ratio: left-col-ratio) = {
  rcol(left-col-ratio, 1fr, [
      #text(weight: "medium")[#smallcaps(name)] #h(1fr) #if sub-info != none { text(style: "italic")[#sub-info] } else { [] }
  ])
}

#let subhead-item(
  name,
  sub-info: none,
  left-col-ratio: left-col-ratio,
  body-pad-left: 2em,
  body
) = {
  subhead(name, sub-info: sub-info, left-col-ratio: left-col-ratio)
  pad(left: body-pad-left)[
  // must add parbreak() to make sure the body is wrapped in `show par`.
    #body #parbreak()
  ]
}

// ============================================
// ENTRY FUNCTIONS
// ============================================
// Two-column entry with a fixed left column (date/ratio/institution) and a
// right column that can contain an optional right-aligned "where" field.
#let entry(label, title, where: none, body: none, left-col: left-col-ratio) = {
  grid(
    columns: (left-col, 1fr),
    column-gutter: col-gutter,
    align: (left, left),
    label,
    grid(
      columns: (1fr, auto),
      column-gutter: col-gutter,
      align: (left, right),
      text(weight: "bold")[#title],
      if where != none { text(style: "italic")[#where] } else { [] },
    ),
  )
  if body != none {
    grid(
      columns: (left-col, 1fr),
      column-gutter: col-gutter,
      [],
      {
        // Prevent nested two-column wrapping when resume enables default par -> col2.
        show par: it => it
        body
      },
    )
  }
}

// Publications: continuous numbering like the reference PDF.
#let pubs-reset() = context { counter("pub").update(1) }
#let pubitem(body) = context {
  let c = counter("pub")
  let label = [
    \[#c.display("1")\]
    #c.step()
  ]
  grid(
    columns: (7.6em, 1fr),
    column-gutter: 0.6em,
    align: (right, left),
    label,
    body,
  )
}
