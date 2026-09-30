---
# title: "Curriculum Vitae"
# title: "Benjamin M. Kent"
papersize: a4
fontsize: 10pt
geometry: top=0.4in, bottom=0.8in, left=0.4in, right=0.4in
# Match the website: Helvetica Neue Light for text and headings, Bold for bold
mainfont: "Helvetica Neue"
mainfontoptions:
  - UprightFont=* Light
  - ItalicFont=* Light Italic
  - BoldFont=* Bold
  - BoldItalicFont=* Bold Italic
monofont: "Menlo"
# Shown as one line under the name (see pdf-filters.lua). contact.md is
# website-only, since it hides the email address from scrapers.
contact:
  - "[benkent@live.co.uk](mailto:benkent@live.co.uk)"
  - "[benmkent.github.io](https://benmkent.github.io/)"
  - "[github.com/benmkent](https://github.com/benmkent/)"
  - "[linkedin.com/in/benjaminmkent](https://www.linkedin.com/in/benjaminmkent/)"
  - "ORCiD [0000-0003-4968-7993](https://orcid.org/0000-0003-4968-7993)"
links-as-notes: false
boxlinks: true
header-includes:
  - |
    ```{=latex}
    \usepackage{titlesec}
    \usepackage{needspace}
    \newfontfamily\rolefont{Helvetica Neue}
    \titleformat*{\section}{\normalfont\Large}
    \titleformat*{\subsection}{\rolefont\large}
    \titlespacing*{\subsection}{0pt}{2.5ex plus 1ex minus .2ex}{0.3ex}
    \titleformat*{\subsubsection}{\normalfont\normalsize}
    \makeatletter
    \renewcommand{\maketitle}{%
      \begin{center}\Large\@title\par\end{center}
      \vspace{0em}
    }
    \makeatother
    ```
---