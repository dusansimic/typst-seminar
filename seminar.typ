#let seminar(
  title: [],
  subtitle: none,
  author: (),
  mentor: (),
  date: [],
  references: none,
  doc,
) = {
  set text(font: "Libertinus Sans")
  set heading(numbering: "1.1.")

  grid(
    rows: (1fr, 1fr, 1fr, 1fr),
    align(top)[
      #grid(
        columns: (1fr, 3fr, 1fr),
        align(left)[
          #image("grbUNS.jpg")
        ],
        align(center + horizon)[
          Departman za Matematiku i informatiku \
          Prirodno-matematički fakultet \
          Univerzitet u Novom Sadu
        ],
        align(right)[
          #image("grbPMF.jpg")
        ]
      )
    ],
    align(center + horizon)[
      #text(17pt, title, weight: "bold") \
      #v(3pt) #text(15pt, subtitle)
    ],
    align(horizon)[
      #grid(
        columns: (1fr, 1fr),
        align(left)[
          _Autor:_ \
          #text(author.name) \
          #text(author.affiliation) \
          #link("mailto:" + author.email)
        ],
        align(right)[
          _Mentor:_ \
          #text(mentor.name) \
          #text(mentor.affiliation) \
          #link("mailto:" + mentor.email)
        ]
      )
    ],
    align(center + bottom, date)
  )

  pagebreak()

  outline(title: "Sadržaj", indent: auto, depth: 2)

  pagebreak()

  doc

  pagebreak()

  bibliography(references, title: "Reference", style: "association-for-computing-machinery")
}
