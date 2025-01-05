---
title: "Curriculum Vitae"
author: "Benjamin M. Kent"
papersize: a4
fontsize: 11pt
geometry: margin=0.5in
mainfont: "Tinos"
output:
  pdf_document: 
    latex_engine: xelatex
header-includes:
  - \usepackage{titlesec}
  - \titleformat{\section}{\large\bfseries}{\thesection}{1em}{}
  - \titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{1em}{}
  - \titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{1em}{}
links-as-notes: true
---
**Email** ben kent at live dot co dot uk<br>
**Website** <https://benmkent.github.io/><br>
**GitHub** <https://github.com/benmkent/><br>

# Academic Experience

## February 2024 – Present: Assegnista di Ricerca (Postdoctoral Researcher) at CNR-IMATI, Pavia, Italy
- Development of novel multi-fidelity surrogate modelling algorithm for use with ``noisy solvers''.
- Focus on non-intrusive approximation via sparse grid methods and exploiting spectral polynomial approximation properties.
- Development of test cases including parametric elliptic and parabolic PDEs and using benchmark *Reynolds-Averaged Navier-Stokes* simulations.
- Containerisation and deployment of research models via *Docker* and *Kubernetes*.

## September 2019 – November 2023: PhD in Numerical Analysis at The University of Manchester, UK
- Supervised by [Professor Catherine Powell](https://personalpages.manchester.ac.uk/staff/Catherine.Powell/) and [Professor David Silvester](https://personalpages.manchester.ac.uk/staff/david.silvester/).
- Industry sponsored ICASE project with *IBM Research UK*.
- Thesis: *Efficient Approximation of Parametric Parabolic Partial Differential Equations*. [\[PDF\]](https://research.manchester.ac.uk/en/studentTheses/efficient-approximation-of-parametric-parabolic-partial-different)
- Investigated **adaptive-in-time sparse-grid stochastic collocation approximation** of a parametric time-dependent advection–diffusion problem.
- Techniques include *finite element method*, *adaptive timestepping* and *sparse polynomial approximation*.
- Hierarchical and residual error estimation strategies developed in the context of *novel adaptive approximation algorithms*.
- Studied *Functional Analysis*, *Approximation Theory and Finite Element Analysis*, *Adaptive Finite Element Methods*, *Uncertainty Quantification* (*Monte Carlo*, *stochastic collocation*, *stochastic Galerkin methods*) and *Bayesian inverse problems*.

## September 2012 – July 2015: Mathematics and Physics BSc, First-Class Honours at The University of Warwick, UK
- Prize for the **best exam results in my cohort**.

## September 2010 – July 2012: The College of Richard Collyer, Horsham, UK
- A Levels: Mathematics A\*, Further Mathematics A\*, Physics A\*, Chemistry A\*, Electronics A\*\.
- GCSE: 10 A\* (inc Maths and English) + 1 A (French)

# Publications
- Seelinger, L., Reinarz, A., Lykkegaard, M.B., Akers, R., Alghamdi, A.M.A., Aristoff, D., Bangerth, W., Bénézech, J., Diez, M., Frey, K., Jakeman, J.D., Jørgensen, J.S., Kim, K.-T., Kent, B.M., Martinelli, M., Parno, M., Pellegrini, R., Petra, N., Riis, N.A.B., Rosenfeld, K., Serani, A., Tamellini, L., Villa, U., Dodwell, T.J., Scheichl, R.: Democratizing Uncertainty Quantification. Journal of Computational Physics. 113542 (2024). [https://doi.org/10.1016/j.jcp.2024.113542](https://doi.org/10.1016/j.jcp.2024.113542)
- Kent, B.M., Powell, C.E., Silvester, D.J., Zimoń, M.J.: Efficient Adaptive Stochastic Collocation Strategies for Advection–Diffusion Problems with Uncertain Inputs. Journal of Scientific Computing. 96, 64 (2023). [https://doi.org/10.1007/s10915-023-02247-w](https://doi.org/10.1007/s10915-023-02247-w)
- Kent, B.M. Efficient Approximation of Parametric Parabolic Partial Differential Equations. PhD Thesis, University of Manchester (2024). [\[eThesis at Univeristy of Manchester\]](https://research.manchester.ac.uk/en/studentTheses/efficient-approximation-of-parametric-parabolic-partial-different)

## In Preparation
- Kent, B. M., Tamellini, L., Giacomini, M., Huerta, A.: Multi-Fidelity Surrogate Modelling for ``Noisy'' Solvers via a Novel Multi-Index Stochastic Collocation Algorithm.

# Conference Organisation
- *Co-organiser:* Minisymposium on [*Adaptive sampling and surrogate/reduced order modelling strategies for parametric differential equations*](https://admos2025.cimne.com/event/area/37eb9a31-759f-11ef-a6b7-000c29ddfc0c), XII International Conference on Adaptive Modeling and Simulation (ADMOS), June 2025.
- *Co-organiser:* [Manchester Mathematics Research Student Conference](https://www.maths.manchester.ac.uk/~pgconf/) online conference, 2020.
- *Co-organiser:* [Mathematics of Data Science](https://maths-of-data.github.io/) online student conference, 2020.  

# Conference Talks
- [UM-Bridge Workshop 2024](https://um-bridge.github.io/workshop/), December 2024. *An UM-Bridge-based setup for multi-fidelity surrogate models for UQ* (**invited talk**). [\[PDF\]](https://benmkent.github.io/assets/slides/umbridgeworkshop24.pdf) [\[YouTube\]](https://youtu.be/mkkBlDaqAp0?si=qZ6dzUSnjm5oi9C3)
- CNR-IMATI Internal Conference, November 2024. *Multi-fidelity Approach for Uncertainty Quantification of a Fluid Dynamics NASA Test Case*.
- Workshop on Frontiers of Uncertainty Quantification, September 2024. *Adaptive Stochastic Collocation for Parametric Parabolic PDEs*.
- The 29th Biennial Numerical Analysis Conference 2023, June 2023. *Adaptive in Time Approximation of Parametric Parabolic PDEs*.
- Manchester SIAM-IMA Student Chapter Conference 2023, April 2023. *Adaptive in Time Approximation of Parametric Parabolic PDEs (**Best Student Talk Prize Winner**)*. [\[PDF\]](https://benmkent.github.io/assets/slides/bk-siam-student-conference.pdf)
- SIAM Conference on Computational Science and Engineering, February 2023. *Efficient Adaptive Stochastic Collocation Strategies for Advection-Diffusion Problems with Uncertain Inputs*.
- SIAM UKIE National Student Chapter Conference, June 2022. *Error Estimation for Stochastic Collocation Approximation of Parametric Advection–Diffusion Problems*.
- IBM Research UK, April 2022. *Efficient Approximation of Parametric Parabolic PDEs* (**invited seminar**).
- SIAM Conference on Uncertainty Quantification, April 2022. *A Posteriori Error Estimation for Stochastic Collocation Applied to Parametric Parabolic PDEs*.
- 26th Annual Meeting of SIAM UKIE Section, January 2022. *A Posteriori Error Estimation for Stochastic Collocation Applied to Parametric Parabolic PDEs*.

# Industrial Experience
## September 2017 – August 2019: Algorithm Developer at Thales, Stockport, UK
-  Array signal processing algorithm development for time series sensor data.
-  Analysis, evaluation and reporting for customer experiments.
-  Collaboration with systems engineers to transform customer requirements to algorithm specifications
-  Collaboration with software engineers to implement algorithm specifications in products.

## September 2015 – September 2017: Research Engineer at Thales, Reading, UK
-   Two-year graduate scheme with training in both technical and core skills.
-   Four project placements: cryptographic key exchange algorithms, radar signal processing algorithms, filtering, data fusion and tracking algorithms, array signal processing and data analysis.
    
## July 2014 – August 2014: Rules and Procedures Software Internship, Lloyd’s Register, Southampton, UK
-  Upgrading FEM software components from FORTRAN to C++.

# Programming Experience
- MATLAB: 4 years industrial algorithm development and data analysis. 4 years as a research tool for approximation of parametric partial differential equations.
- Python: 2 years including FEM approximation via *FEniCS* and *petsc4py*, packaging models for containerisation, interfacing with research models.
- Julia: Implementation of novel PDE approximation algorithms and development of sparse grids approximation package. Interfacing and exploiting existing Python packages.
- OpenFOAM: Experience as a user for *Reynolds-Averaged Navier-Stokes* turbulence modelling.
- Docker and Kubernetes: Containerisation of software models via Docker and deployment via Kubernetes.
- C / C++: Development of cryptographic key-exchange algorithms, development of FEM software.
- Unix systems, version control (git, SVN, workflow automation), LaTeX.

# Teaching Experience
- University of Manchester: Teaching assistant for Matrix Analysis MATH36001 (semester one, 2021), Mathematical Workshop (MATH10001, semester one, 2021), for Complex Analysis MATH20142 (semester two, 2020).