#import "icons.typ": *

#let left-col-ratio = 17%

#let resume(
  // margin: (left: 1.4cm, right: 1.2cm, top: 0.8cm, bottom: 1cm),
  // font-settings: (
  //   font-family: "Palatino",
  //   font-size: 10pt,
  //   author-font-size: 25pt,
  //   lang: "en",
  // ),
  // par-settings: (
  //   leading: 0.5em,
  //   spacing: 0.5em,
  // ),
  // list-settings: (
  //   bullet-list-spacing: 0.7em,
  //   numbered-list-spacing: 0.7em,
  // ),
  // link-line-settings: (
  //   stroke: 0.5pt + luma(200),
  //   offset: 2pt,
  // ),
  // heading-settings: (
  //   above-spacing: 1.2em,
  //   below-spacing: 0.6em,
  //   section-title-size: 1.1em,
  //   section-title-weight: "semibold",
  //   section-note-size: 0.8em,
  //   section-note-weight: "light",
  //   section-line-above-spacing: -0.85em,
  //   line-length: 100%,
  //   line-stroke: 0.04em + black,
  // ),
  author-info: (
    name: "John Doe",
    // primary-info: [
    //   +1-234-567-8900 | #link("mailto:john.doe@example.com")[john.doe\@example.com] | #link("https://www.john-doe.com/")[john-doe.com]
    // ],
    // secondary-info: [
    //   #link("https://www.linkedin.com/in/john-doe-linkedin")[linkedin] | #link("https://github.com/john-doe-github")[github] | #link("https://scholar.google.com/citations?user=john-doe-google-scholar")[google-scholar] | #link("https://orcid.org/john-doe-orcid")[orcid]
    // ],
    // tertiary-info: "Your City, Your State - Your ZIP, Your Country",
  ),
  icon-color: luma(40%),
  icon-height: 0.95em,
  icon-baseline: 20%,
  body,
) = {
  // ============================================
  // BASE SETTINGS
  // ============================================
  set document(author: author-info.name, title: author-info.name)

  set text(
    font: "Alegreya",
    size: 10pt,
    ligatures: false,
  )

  set page(
    paper: "a4", // or "us-letter"
    margin: (left: 0.95in, right: 0.95in, top: 0.9in, bottom: 0.9in),
    footer: context { align(center)[#text(size: 0.9em)[#counter(page).display("1")]] },
  )

  set par(
    justify: true,
    first-line-indent: 0pt,
    leading: 0.55em,
    spacing: 1em,
  )

  show heading.where(level: 2): it => {
    set block(breakable: false, above: 1.2em, below: 1em)
    set text(font: "Inter 18pt", size: 12pt)
    it
  }

  show heading.where(level: 3): it => {
    set block(breakable: false, above: 1em, below: 1em)
    set text(size: 10pt, weight: "medium")
    set align(right)
    col1[#smallcaps[#it]]
  }

  // ============================================
  // LINK SETTINGS
  // ============================================
  show link: it => {underline(stroke: 0.5pt + luma(200), offset: 2pt, it)}

  let configured-icons = configure-icon-registry(
    color: icon-color,
    height: icon-height,
    baseline: icon-baseline,
  )
  let google-scholar-icon = configured-icons.at("google-scholar-icon")
  let link-icon = configured-icons.at("link-icon")
  let linkedin-icon = configured-icons.at("linkedin-icon")
  let github-icon = configured-icons.at("github-icon")
  let orcid-icon = configured-icons.at("orcid-icon")
  let x-icon = configured-icons.at("x-icon")

  // ============================================
  // HEADER
  // ============================================
  let header-block-above = 0pt
  let header-block-below = 1.8em
  let header-title-gap = 1.5em
  block(above: header-block-above, below: header-block-below)[
    #set par(spacing: 0pt)
    #text(font: "Inter 18pt", size: 1.8em, weight: "bold")[Wenhao Liao]
    #v(header-title-gap)
    #pad(left: 2em, right: 2em)[
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 2em,
        row-gutter: 0.15em,
        align: (left, right),
        [
          Assistant Professor \
          Department of Your Department \
          Building Name \
          Your University \
          City, Countryg
        ],
        text(font: "Courier New", size: 0.95em)[
          #link("mailto:your.email@university.edu")[your.email\@university.edu] \
          #link("https://www.yourwebsite.com")[https://www.yourwebsite.com] \ 
          #link("https://linkedin.com/in/your-linkedin-username")[#linkedin-icon()] #link("https://x.com/your-x-username")[#x-icon()] #link("https://scholar.google.com/citations?user=your-scholar-id")[#google-scholar-icon()] #link("https://github.com/your-github-username")[#github-icon()] #link("https://orcid.org/0000-0000-0000-0000")[#orcid-icon()] 
        ],
      )
    ]
  ]

  body
}

// Institution / organization line with right-aligned location.
#let subhead(name, location: none) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    align: (left, right),
    text(weight: "medium")[#smallcaps(name)],
    if location != none { text(style: "italic")[#location] } else { [] },
  )
}

// Two-column entry with a fixed left column (date/ratio/institution) and a
// right column that can contain an optional right-aligned "where" field.
#let entry(label, title, where: none, body: none, left-col: left-col-ratio) = {
  grid(
    columns: (left-col, 1fr),
    column-gutter: 1.2em,
    align: (left, left),
    label,
    grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      align: (left, right),
      text(weight: "bold")[#title],
      if where != none { text(style: "italic")[#where] } else { [] },
    ),
  )
  if body != none {
    grid(
      columns: (left-col, 1fr),
      column-gutter: 1.2em,
      [],
      body,
    )
  }
}

#let col1(body, right: none, left-col: left-col-ratio) = {
  grid(
    columns: (left-col, 1fr),
    column-gutter: 1.2em,
    body,
    if right != none { right } else { [] },
  )
}

#let col2(body, left: none, left-col: left-col-ratio) = {
  grid(
    columns: (left-col, 1fr),
    column-gutter: 1.2em,
    if left != none { left } else { [] },
    body,
  )
}

#let category(title) = {
  text(style: "italic")[#title]
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
    columns: (2.6em, 1fr),
    column-gutter: 0.6em,
    align: (right, left),
    label,
    body,
  )
}
