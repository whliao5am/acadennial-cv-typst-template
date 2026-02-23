#import "../src/lib.typ": *

// ============================================
// Initialize left column ratio
// ============================================

#let col-cfg = (
  c1-len: 15%,
  c2-len: 1fr,
  c3-len: auto,
  col-gutter: 1em,
)

#let employment-head = employment-head.with(..col-cfg)
#let employment-head-item = employment-head-item.with(..col-cfg)
#let employment-head-item-list = employment-head-item-list.with(..col-cfg)
#let meta-entry = meta-entry.with(..col-cfg)
#let meta-entry-item = meta-entry-item.with(..col-cfg)
#let meta-entry-item-list = meta-entry-item-list.with(..col-cfg)
#let pub-item = pub-item.with(..col-cfg)
#let pub-item-list = pub-item-list.with(..col-cfg)

// ============================================
// Initialize resume settings
// ============================================
#show: resume.with(
  col-args: (
    c1-len: col-cfg.c1-len,
    c2-len: col-cfg.c2-len,
    col-gutter: col-cfg.col-gutter,
  ),
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
)

== Current Employment
#employment-head-item(
  "Your University",
  "City, Country",
)[
  Assistant Professor @ the Department of Your Department

  Lab Director and Principal Investigator, \
  Your Lab Name
]

== Education
#employment-head-item-list(
  (
    c2: "Undergraduate University",
    c3: "City, Country",
    body: [
      B.Eng./B.S. in Major @ Honors College, Month Year.
    ],
  ),
  (
    c2: "University Name",
    c3: "State, Country",
    body: [
      Ph.D. in Computer Science. Month Year \
      _Thesis:_ Your Thesis Title \
      _Advisor:_ Prof. Advisor Name

      M.S. in Computer Science, Month Year \
      _Thesis:_ Your Master's Thesis Title \
      _Advisor:_ Prof. Advisor Name
    ],
  ),
)

== Research Interests
#lorem(50)

== Experience

#meta-entry-item-list(
  (
    c1: "2019–2025",
    c2: "Research Assistant (Advised by Prof. Name)",
    c3: "University Name, City, State, Country",
    body: [#lorem(30)],
  ),
  (
    c1: "2024",
    c2: "Research Intern (Mentored by Prof. Name)",
    c3: "Company Name Inc., City, State, Country",
    body: [Brief description of internship work and outcomes.],
  ),
  (
    c1: "2023–2024",
    c2: "Research Consultant (Worked with Dr. Name)",
    c3: "Company Name Inc., City, State, Country",
    body: [Description of consulting work and responsibilities.],
  ),
)

== Awards and Honors

#meta-entry-item-list(
  item-spacing: 0.8em,
  (c1: "X/Applicants", c2: "Award Name, Granting Organization"),
  (c1: "X/Applicants", c2: "Another Award Name"),
  (c1: "X/Worldwide", c2: "Prestigious Award, Organization Name Year"),
  (c1: "X/U.S.", c2: "Grant Name"),
  (c1: "X/Y+", c2: "Fellowship Name, Department Name"),
  (c1: "Top X%", c2: "Recognition Name, Location"),
)


== Research and Publications

#pubs-reset()

=== Preprints

#pub-item-list(
  [*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. _In Submission_, 2025.],
  [Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. _In Submission_, 2025.],
)

=== Conference

#pub-item-list(
  [*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. In _Proceedings of Conference Name (Abbrev)_, pages XX–XX, Year.],
  [Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. In _Proceedings of Another Conference Name (Abbrev)_, pages XX–XX, City, Country, Year.],
)

=== Workshop

#pub-item-list(
  [*Your Name*, Co-author 1, Co-author 2. Workshop paper title. In _Workshop Name_, Month Year.],
)

=== Poster

#pub-item-list(
  [*Your Name*, Co-author 1, Co-author 2. Poster title. In _Proceedings of Conference Name (Abbrev)_. *Award Name*, City, State, Year.],
)

== Academic Service

#meta-entry-item-list(
  (c1: "2023–2025", c2: "Role Name, Organization Name"),
  (c1: "2024", c2: "Program Committee Member, Conference Name (ABBREV)"),
  (c1: "2024", c2: "Pre-review Taskforce, Conference Name 2025"),
  (c1: "2017–2025", c2: "Reviewer for multiple conferences and journals, including:", body: [Conference Name 1, Conference Name 2 (ABBREV), Journal Name 1, Journal Name 2, etc.]),
)

== Teaching and Mentoring Experience

=== Teaching

#meta-entry-item-list(
  (
    c1: "2020",
    c2: "Student Instructor, Course Name",
    c3: "City, Country",
    body: [Description of teaching responsibilities and achievements.],
  ),
  (
    c1: "2020",
    c2: "Teaching Assistant, Course Code Course Name",
    c3: "City, Country",
    body: [Description of TA responsibilities.],
  ),
)

=== Mentoring

#meta-entry-item-list(
  (c1: "University", c2: [*Student Name*, Ph.D. student, coauthored \[X,Y,Z\], working on follow-ups.]),
  (c1: "University", c2: [*Student Name*, Master student -> Company Name. coauthored \[X\].]),
  (c1: "University", c2: [*Student Name*, Undergraduate student.]),
)

== Invited Talks

#meta-entry-item-list(
  (c1: "2024-2025", c2: "Speaker, Talk Title \@Various Universities", body: [_University Name 1, University Name 2, University Name 3, etc._]),
  (c1: "2023", c2: "Speaker, Talk Title \@Conference Name"),
  (c1: "2022", c2: "Invited Speaker, Talk Title \@University Name"),
)
