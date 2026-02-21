#import "../src/lib.typ": *

// ============================================
// Initialize left column ratio
// ============================================
#let left-col-ratio = 15%
#let subhead = subhead.with(left-col-ratio: left-col-ratio)
#let subhead-item = subhead-item.with(left-col-ratio: left-col-ratio)

// ============================================
// Initialize resume settings
// ============================================
#show: resume.with(
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
  )
)

== Current Employment
#subhead-item("Your University", sub-info: "City, Country")[
  Assistant Professor @ the Department of Your Department

  Lab Director and Principal Investigator, \
  Your Lab Name
]

== Education
#subhead-item("Undergraduate University", sub-info: "City, Country")[
  B.Eng./B.S. in Major @ Honors College, Month Year.
]

#subhead-item("University Name", sub-info: "State, Country")[
  Ph.D. in Computer Science. Month Year \
  _Thesis:_ Your Thesis Title \
  _Advisor:_ Prof. Advisor Name

  M.S. in Computer Science, Month Year \
  _Thesis:_ Your Master's Thesis Title \
  _Advisor:_ Prof. Advisor Name
]

== Research Interests
#lorem(50)

== Experience

#entry(
  "2019–2025",
  "Research Assistant (Advised by Prof. Name)",
  where: "University Name, City, State, Country",
  body: [
    #lorem(30)
  ],
)

#entry(
  "2024",
  "Research Intern (Mentored by Prof. Name)",
  where: "Company Name Inc., City, State, Country",
  body: [
    Brief description of internship work and outcomes.
  ],
)

#entry(
  "2023–2024",
  "Research Consultant (Worked with Dr. Name)",
  where: "Company Name Inc., City, State, Country",
  body: [
    Description of consulting work and responsibilities.
  ],
)

== Awards and Honors

#grid(
  columns: (15%, 1fr),
  column-gutter: 1.2em,
  row-gutter: 0.2em,
  align: (left, left),

  "X/Applicants", "Award Name, Granting Organization",
  "X/Applicants", "Another Award Name",
  "X/Worldwide", "Prestigious Award, Organization Name Year",
  "X/U.S.", "Grant Name",
  "X/Y+", "Fellowship Name, Department Name",
  "Top X%", "Recognition Name, Location",
)


== Research and Publications

#pubs-reset()

=== Preprints

#pubitem[*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. _In Submission_, 2025.]

#pubitem[Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. _In Submission_, 2025.]

=== Conference

#pubitem[*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. In _Proceedings of Conference Name (Abbrev)_, pages XX–XX, Year.]

#pubitem[Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. In _Proceedings of Another Conference Name (Abbrev)_, pages XX–XX, City, Country, Year.]

=== Workshop

#pubitem[*Your Name*, Co-author 1, Co-author 2. Workshop paper title. In _Workshop Name_, Month Year.]

=== Poster

#pubitem[*Your Name*, Co-author 1, Co-author 2. Poster title. In _Proceedings of Conference Name (Abbrev)_. *Award Name*, City, State, Year.]

== Academic Service

#entry("2023–2025", "Role Name, Organization Name")

#entry("2024", "Program Committee Member, Conference Name (ABBREV) 2024")

#entry("2024", "Pre-review Taskforce, Conference Name 2025")

#entry(
  "2017–2025",
  "Reviewer for multiple conferences and journals, including:",
  body: [Conference Name 1, Conference Name 2 (ABBREV), Journal Name 1, Journal Name 2, etc.],
)

== Teaching and Mentoring Experience

=== Teaching

#entry(
  "2022",
  "Student Instructor, Course Name",
  where: "City, Country",
  body: [
    Description of teaching responsibilities and achievements.
  ],
)

#entry(
  "2020",
  "Teaching Assistant, Course Code Course Name",
  where: "City, Country",
  body: [
    Description of TA responsibilities.
  ],
)

=== Mentoring

#grid(
  columns: (left-col-ratio, 1fr),
  column-gutter: 1em,
  row-gutter: 0.2em,

  "University", [*Student Name*, Ph.D. student, coauthored \[X,Y,Z\], working on follow-ups.],
  "University", [*Student Name*, Master student -> Company Name. coauthored \[X\].],
  "University", [*Student Name*, Undergraduate student.],
)

== Invited Talks

#entry(
  "2024-2025",
  [Speaker, "Talk Title" \@Various Universities],
  body: [_University Name 1, University Name 2, University Name 3, etc._],
)

#entry("2023", [Speaker, "Talk Title" \@Conference Name])

#entry("2022", [Invited Speaker, "Talk Title" \@University Name])
