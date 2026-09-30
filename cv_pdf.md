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
links-as-notes: false
boxlinks: true
header-includes:
  - |
    ```{=latex}
    \usepackage{titlesec}
    \titleformat*{\section}{\normalfont\Large}
    \titleformat*{\subsection}{\normalfont\large}
    \titleformat*{\subsubsection}{\normalfont\normalsize}
    \makeatletter
    \renewcommand{\maketitle}{%
      \begin{center}\Large\@title\par\end{center}
      \vspace{0em}
    }
    \makeatother
    ```
---