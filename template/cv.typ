#import "../src/lib.typ": *

#show: resume.with(
)


// ============================================
// CURRENT EMPLOYMENT
// ============================================
== Current Employment
// #pad(left: 2em, right: 2em)[
//   #subhead("Your University", location: "City, Country")

//   Assistant Professor @ the Department of Your Department

//   Lab Director and Principal Investigator, \
//   Your Lab Name
// ]
#col2[
#subhead("Your University", location: "City, Country")

Assistant Professor @ the Department of Your Department

Lab Director and Principal Investigator, \
Your Lab Name
]

// ============================================
// EDUCATION
// ============================================
== Education

#col2[
  #subhead("University Name", location: "State, Country")
  Ph.D. in Computer Science. Month Year \
  _Thesis:_ Your Thesis Title \
  _Advisor:_ Prof. Advisor Name

  M.S. in Computer Science, Month Year \
  _Thesis:_ Your Master's Thesis Title \
  _Advisor:_ Prof. Advisor Name
]

#col2[
#subhead("Undergraduate University", location: "City, Country")
  B.Eng./B.S. in Major @ Honors College, Month Year.
]

// ============================================
// RESEARCH INTERESTS
// ============================================
== Research Interests
#col2[
Your Research Area 1, Research Area 2, Research Area 3
]

// // ============================================
// // EXPERIENCE
// // ============================================
// == Experience

// #entry(
//   "2019–2025",
//   "Research Assistant (Advised by Prof. Name)",
//   where: "University Name, City, State, Country",
//   body: [
//     Research assistant description and key achievements. Describe your main projects and contributions.
//   ],
// )

// #entry(
//   "2024",
//   "Research Intern (Mentored by Prof. Name)",
//   where: "Company Name Inc., City, State, Country",
//   body: [
//     Brief description of internship work and outcomes.
//   ],
// )

// #entry(
//   "2023–2024",
//   "Research Consultant (Worked with Dr. Name)",
//   where: "Company Name Inc., City, State, Country",
//   body: [
//     Description of consulting work and responsibilities.
//   ],
// )

// // ============================================
// // AWARDS AND HONORS
// // ============================================
// == Awards and Honors

// #grid(
//   columns: (ratio-col, 1fr),
//   column-gutter: 1em,
//   row-gutter: 0.2em,
//   align: (right, left),

//   "X/Applicants", "Award Name, Granting Organization",
//   "X/Applicants", "Another Award Name",
//   "X/Worldwide", "Prestigious Award, Organization Name Year",
//   "X/U.S.", "Grant Name",
//   "X/Y+", "Fellowship Name, Department Name",
//   "Top X%", "Recognition Name, Location",
// )

// // ============================================
// // RESEARCH AND PUBLICATIONS
// // ============================================
// == Research and Publications

// #pubs-reset()

// === Preprint

// #pubitem[*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. _In Submission_, 2025.]

// #pubitem[Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. _In Submission_, 2025.]

// === Conference

// #pubitem[*Your Name*, Co-author 1, Co-author 2, and Co-author 3. Paper title. In _Proceedings of Conference Name (Abbrev)_, pages XX–XX, Year.]

// #pubitem[Co-author 1, *Your Name*, Co-author 2, and Co-author 3. Another paper title. In _Proceedings of Another Conference Name (Abbrev)_, pages XX–XX, City, Country, Year.]

// === Workshop

// #pubitem[*Your Name*, Co-author 1, Co-author 2. Workshop paper title. In _Workshop Name_, Month Year.]

// === Poster

// #pubitem[*Your Name*, Co-author 1, Co-author 2. Poster title. In _Proceedings of Conference Name (Abbrev)_. *Award Name*, City, State, Year.]

// // ============================================
// // ACADEMIC SERVICE
// // ============================================
// == Academic Service

// #entry("2023–2025", "Role Name, Organization Name")

// #entry("2024", "Program Committee Member, Conference Name (ABBREV) 2024")

// #entry("2024", "Pre-review Taskforce, Conference Name 2025")

// #entry(
//   "2017–2025",
//   "Reviewer for multiple conferences and journals, including:",
//   body: [Conference Name 1, Conference Name 2 (ABBREV), Journal Name 1, Journal Name 2, etc.],
// )

// // ============================================
// // TEACHING AND MENTORING EXPERIENCE
// // ============================================
// == Teaching and Mentoring Experience

// #category("Teaching")

// #entry(
//   "2022",
//   "Student Instructor, Course Name",
//   where: "City, Country",
//   body: [
//     Description of teaching responsibilities and achievements.
//   ],
// )

// #entry(
//   "2020",
//   "Teaching Assistant, Course Code Course Name",
//   where: "City, Country",
//   body: [
//     Description of TA responsibilities.
//   ],
// )

// #category("Mentoring")

// #grid(
//   columns: (mentor-col, 1fr),
//   column-gutter: 1em,
//   row-gutter: 0.2em,

//   "University", [*Student Name*, Ph.D. student, coauthored \[X,Y,Z\], working on follow-ups.],
//   "University", [*Student Name*, Master student -> Company Name. coauthored \[X\].],
//   "University", [*Student Name*, Undergraduate student.],
// )

// // ============================================
// // INVITED TALKS
// // ============================================
// == Invited Talks

// #entry(
//   "2024-2025",
//   [Speaker, "Talk Title" \@Various Universities],
//   body: [_University Name 1, University Name 2, University Name 3, etc._],
// )

// #entry("2023", [Speaker, "Talk Title" \@Conference Name])

// #entry("2022", [Invited Speaker, "Talk Title" \@University Name])
