#import "../src/lib.typ": *

// ============================================
// Initialize left column ratio
// ============================================

#let col-cfg = (c1-len: 15%, c2-len: 1fr, c3-len: auto, col-gutter: 1em)
#let employment-head = employment-head.with(..col-cfg)
#let employment-head-item = employment-head-item.with(..col-cfg)
#let meta-entry = meta-entry.with(..col-cfg)
#let meta-entry-item = meta-entry-item.with(..col-cfg)
#let pubitem = pubitem.with(..col-cfg)

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
#employment-head-item(
  "Undergraduate University",
  "City, Country",
)[
  B.Eng./B.S. in Major @ Honors College, Month Year.
]

#employment-head-item(
  "University Name",
  "State, Country",
)[
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

#meta-entry-item(
  "2019–2025",
  "Research Assistant (Advised by Prof. Name)",
  "University Name, City, State, Country",
)[
  #lorem(30)
]

#meta-entry-item(
  "2024",
  "Research Intern (Mentored by Prof. Name)",
  "Company Name Inc., City, State, Country",
)[
  Brief description of internship work and outcomes.
]

#meta-entry-item(
  "2023–2024",
  "Research Consultant (Worked with Dr. Name)",
  "Company Name Inc., City, State, Country",
)[
  Description of consulting work and responsibilities.
]

== Awards and Honors

#meta-entry("X/Applicants", "Award Name, Granting Organization", [])
#meta-entry("X/Applicants", "Another Award Name", [])
#meta-entry("X/Worldwide", "Prestigious Award, Organization Name Year", [])
#meta-entry("X/U.S.", "Grant Name", [])
#meta-entry("X/Y+", "Fellowship Name, Department Name", [])
#meta-entry("Top X%", "Recognition Name, Location", [])


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

#meta-entry("2023–2025", "Role Name, Organization Name", [])

#meta-entry("2024", "Program Committee Member, Conference Name (ABBREV)", [])

#meta-entry("2024", "Pre-review Taskforce, Conference Name 2025", [])

#meta-entry-item(
  "2017–2025",
  "Reviewer for multiple conferences and journals, including:",
  [],
)[Conference Name 1, Conference Name 2 (ABBREV), Journal Name 1, Journal Name 2, etc.]

== Teaching and Mentoring Experience

=== Teaching

#meta-entry-item(
  "2020",
  "Student Instructor, Course Name",
  "City, Country",
)[
  Description of teaching responsibilities and achievements.
]

#meta-entry-item(
  "2020",
  "Teaching Assistant, Course Code Course Name",
  "City, Country",
)[
  Description of TA responsibilities.
]

=== Mentoring

#meta-entry("University", [*Student Name*, Ph.D. student, coauthored \[X,Y,Z\], working on follow-ups.], [])
#meta-entry("University", [*Student Name*, Master student -> Company Name. coauthored \[X\].], [])
#meta-entry("University", [*Student Name*, Undergraduate student.], [])

== Invited Talks

#meta-entry-item(
  "2024-2025",
  "Speaker, Talk Title \@Various Universities",
  [],
)[_University Name 1, University Name 2, University Name 3, etc._]

#meta-entry("2023", "Speaker, Talk Title \@Conference Name", [])

#meta-entry("2022", "Invited Speaker, Talk Title \@University Name", [])
