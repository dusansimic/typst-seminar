# Usage

1. Add `grbPMF.jpg`, `grbUNS.jpg` and `seminar.typ` to your project directory.
2. Add the following Typst code to the top of your project file:

```typst
#import "seminar.typ": seminar

#show: seminar.with(
  title: [Naslov],
  subtitle: [Podnaslov],
  author: (
    name: "Pera Perić",
    affiliation: "Departman za matematiku i informatiku",
    email: "dmi.pera.peric@student.pmf.uns.ac.rs"
  ),
  mentor: (
    name: "Mika Mikić",
    affiliation: "Departman za matematiku i informatiku",
    email: "mika.mikic@dmi.uns.ac.rs"
  ),
  date: [mmmm. YYYY.],
  references: "refs.bib"
)

// ovde ide sadrzaj dokumenta
```

3. Start writing yor seminary paper :grin:

# Author

- Dušan Simić <dusan.simic1810@gmail.com>
