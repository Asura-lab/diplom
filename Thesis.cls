\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{Thesis}[2022/04/12 v0.1 testclass]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\usepackage{fancyhdr}
%\usepackage{cite}
\usepackage{titlesec}
\usepackage{graphicx}
\usepackage{tabularx}
%\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage[labelsep=quad,indention=10pt]{caption}
\usepackage[]{subcaption}
\usepackage[para]{threeparttable}
\usepackage{algorithm}
\usepackage{algpseudocode}
\usepackage{algcompatible}
\usepackage{float}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\usepackage{siunitx}
\usepackage{mathrsfs}
\usepackage{blindtext}
\usepackage{titlepic}
\usepackage[round]{natbib}
%\usepackage{acronym} 
\usepackage{lmodern}
\usepackage{longtable}
\usepackage[titles]{tocloft}
\usepackage{lscape}
\usepackage{booktabs}
\usepackage{adjustbox}
\usepackage{rotating}
\usepackage{subcaption}
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\usepackage[nohyperlinks]{acronym}

%\onehalfspacing
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{6pt plus1pt minus1pt}
\usepackage{vmargin}
\setmarginsrb               { 25mm}  % left margin
                            { 20mm}  % top margin
                            { 20mm}  % right margin
                            { 20mm}  % bottom margin
                            {  20pt}  % head height
                            {0.25in}  % head sep
                            {   9pt}  % foot height
                            { 0.3in}  % foot sep
\setstretch{1.0}


   
\hypersetup{urlcolor=black, colorlinks=true}


\titlespacing{\chapter}{0pt}{-70pt}{1pt}
\titleformat{\chapter}[block]{\bfseries}{\textsc{\thechapter.}}{0.5em}{}
\titlespacing{\section}{0pt}{0pt}{1pt}
\titleformat{\section}[block]{\bfseries}{\thesection.}{0.5em}{}
\titlespacing{\subsection}{0pt}{0pt}{1pt}
\titleformat{\subsection}[block]{\bfseries}{}{0em}{}
\titlespacing{\subsubsection}{0pt}{0pt}{1pt}
\titleformat{\subsubsection}[block]{\bfseries}{}{0em}{}


\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{1}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}


\pagestyle{fancy}
\fancyhf{}%
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[C]{}
\fancyfoot[C]{\normalsize \thepage}%

\renewcommand\tableofcontents{
\addtotoc{Гарчиг}
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\newcommand\listfigname{Зураг болон Хүснэгтийн жагсаалт}
\newcommand{\mlof}{Зураг~lof}
\newcommand\listoffigandtable{
\btypeout{Зураг болон Хүснэгтийн жагсаалт}
\addtotoc{Зураг болон Хүснэгтийн жагсаалт}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \chapter*{\listfigname
      \@mkboth{\MakeUppercase\listfigname}
              {\MakeUppercase\listfigname}}
    \@starttoc{lof}
      \par
      \null\par
     \@starttoc{lot}%
}\end{spacing}
}

% Зургийн жагсаалт тусдаа
\newcommand\listoffig{
\btypeout{Зургийн жагсаалт}
\addtotoc{Зургийн жагсаалт}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \chapter*{Зургийн жагсаалт
      \@mkboth{\MakeUppercase{Зургийн жагсаалт}}
              {\MakeUppercase{Зургийн жагсаалт}}}
    \@starttoc{lof}
}\end{spacing}
}

% Хүснэгтийн жагсаалт тусдаа
\newcommand\listoftab{
\btypeout{Хүснэгтийн жагсаалт}
\addtotoc{Хүснэгтийн жагсаалт}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \chapter*{Хүснэгтийн жагсаалт
      \@mkboth{\MakeUppercase{Хүснэгтийн жагсаалт}}
              {\MakeUppercase{Хүснэгтийн жагсаалт}}}
    \@starttoc{lot}
}\end{spacing}
}

\renewcommand{\cftdotsep}{2} 
\renewcommand{\cftfigindent}{0em}  
\renewcommand{\cftfignumwidth}{5.5em}  
\renewcommand{\cftfigpresnum}{Зураг \ } 
\renewcommand{\cftfigaftersnum}{.} 

\renewcommand{\cftdotsep}{2} 
\renewcommand{\cfttabindent}{0em}  
\renewcommand{\cfttabnumwidth}{6.5em}  
\renewcommand{\cfttabpresnum}{Хүснэгт \ } 
\renewcommand{\cfttabaftersnum}{.} 

\newcommand\listsymbolname{Товчилсон үгсийн жагсаалт}
\newcommand{\fref}[1]{Зураг~\ref{#1}}
\newcommand{\tref}[1]{Хүснэгт~\ref{#1}}

\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\DeclareRobustCommand\symup[1]{{\mathrm{#1}}}%
\DeclareRobustCommand{\BibTeX}{{Bib\kern-0.08em \TeX}}
