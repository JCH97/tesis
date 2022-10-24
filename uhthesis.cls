% Created by Yasser González-Fernández <ygonzalezfernandez@gmail.com>
% Created by Ariel Hernández Amador <gnuaha7@uh.cu>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhthesis}[2011/04/12 0.1 uhthesis]

\RequirePackage[utf8]{inputenc}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\relax
\LoadClass{book}
\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}

\RequirePackage[spanish]{babel}
\RequirePackage[fixlanguage]{babelbib}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
\RequirePackage{footmisc}
%\RequirePackage[refpage, intoc, spanish]{nomencl}

\RequirePackage[pagebackref,linktocpage,breaklinks,colorlinks,%
linkcolor=black,anchorcolor=black,citecolor=black,%
filecolor=black,menucolor=black,runcolor=black,%
urlcolor=black]{hyperref}

                
% fancyhdr settings from texlive-doc
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
\fancyhf{} % clear all header and footer fields
\fancyfoot[C]{\bfseries \thepage} % except the center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

\fancyhf{}
\if@twoside
    \renewcommand{\chaptermark}[1]{\markboth{\small \ \chaptername\ \thechapter. \ #1}{}}
    \renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}
    \fancyhead[L]{\slshape \leftmark}
    \fancyhead[R]{\thepage}
    \fancyhead[LO]{\slshape \rightmark}
    \fancyhead[RO,LE]{\textbf{\thepage}}
    \fancyhead[RE]{\slshape \leftmark}
\else
    \renewcommand{\chaptermark}[1]{\markboth{\small \ \chaptername\ \thechapter. \ #1}{}}
    \fancyhead[L]{\slshape \leftmark}
    \fancyhead[R]{\thepage}
\fi
\renewcommand{\headheight}{28pt}

\setlength\oddsidemargin{36.1\p@}
\setlength\evensidemargin{36.1\p@}
\setlength\marginparwidth{40\p@}
\marginparsep 10pt
\topmargin 0pt \headsep .5in
%\textheight 8.1in \textwidth 6in

% More liberal float placement from BYUPhys.cls.
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}
\renewcommand{\textfraction}{0.07}

% Backreferences in the bibliography.
%\backrefspanish
%\renewcommand{\backref}[1]{}
%\renewcommand{\backrefalt}[4]{%
 % \ifcase #1 \relax%
 % \or (Citado en la página~#2).%
 % \else (Citado en las páginas~#2).%
 % \fi%
%}
\btxifchangecaseoff
\renewcommand{\btxselectlanguage}[1]{\relax}

% Book edition numbers.
\declarebtxcommands{spanish}{%
  \def\btxnumeralshort#1{#1.^a}%
  \def\btxnumerallong#1{%
    \ifnumber{#1}{%
      \ifcase#1 0\or
        primera\or segunda\or tercera\or cuarta\or quinta\or
        sexta\or séptima\or octava\or novena\or décima\else
        #1.^a%
      \fi%
    }%
    {#1}%
  }%
}

%\renewcommand{\nomname}{Glosario}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\logo}[1]{\def\@logo{#1}}

\newenvironment{opinion}%
  {\chapter*{Opinión del tutor}}%
  {}
\newenvironment{acknowledgements}%
  {\chapter*{Agradecimientos}}%
  {}
\newenvironment{spanish_abstract}%
  {\chapter*{Resumen}}%
  {}
\newenvironment{english_abstract}%
  {\chapter*{Abstract}}%
  {}  
\newenvironment{introduction}%
  {\cleardoublepage%
   \phantomsection%
   \addcontentsline{toc}{chapter}{Introducción}%
   \chapter*{Introducción}}%
  {}
\newenvironment{conclusions}%
  {\cleardoublepage%
   \phantomsection%
   \addcontentsline{toc}{chapter}{Conclusiones}%
   \chapter*{Conclusiones}}%
  {}
\newenvironment{recomendations}%
  {\cleardoublepage%
   \phantomsection%
   \addcontentsline{toc}{chapter}{Recomendaciones}%
    \chapter*{Recomendaciones}}%
  {}
\newenvironment{dedication}%
  {\cleardoublepage%
   \thispagestyle{empty}%
   \vskip 3.5cm%
   \begin{flushright}}%
  {\end{flushright}}


\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{url}
\usepackage{hyperref}
\usepackage[spanish]{babel}
\usepackage{subcaption}

\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
	backgroundcolor=\color{backcolour},   
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\ttfamily\footnotesize,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}
\lstset{style=mystyle}
\lstset{language=Python}
\lstset{
	literate=
	{á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
	{Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
	{ñ}{{\~n}}1
}

\usepackage{array}


\newcommand{\indep}{\perp}
\newcommand{\CondIndep}[3]{(#1 \perp #2 \mid #3)}
\newcommand{\logicand}{\;\&\;}

\newtheorem{theorem}{Teorema}[section]  
\newtheorem{dfn}{Definición}[section]
\newtheorem{cor}{Corolario}[section]
\newtheorem{prop}{Proposición}[section]
\newtheorem{ex}{Ejemplo}[section]
\newtheorem{rl}{Regla}[section]
\newtheorem{alg}{Algoritmo}[section]
\newtheorem{model}{Modelo}[section]


\AtBeginDocument{%
  \hypersetup{pdftitle=\@title,pdfauthor=\@author}%
  % Renaming cuadro to tabla.
  \renewcommand{\listtablename}{Índice de tablas}%
  \renewcommand{\tablename}{Tabla}%
}

% The title page.
\def\maketitle{%
  \thispagestyle{empty}%
  \begin{center}
    {\large Universidad de La Habana} \\ \@faculty \\ 
    \vskip 0.25cm
    \includegraphics[width=1.75cm]{\@logo} \\
    \vfill
    {\LARGE \textbf{\@title}} \\
    \vskip 2cm
    {\Large Autor: \textbf{\@author}} \\
    \vskip 0.5cm
    {\Large Tutor: \textbf{\@advisor}} \\
    \vfill
    {\large Trabajo de Diploma \\presentado en opción al título de \\ \@degree} \\
    \vskip 0.5cm
    \includegraphics[width=2.5cm]{Graphics/qrcode}
    \vskip 0.5cm
    \@date
  \end{center}
}

\def\frontmatter{%
  \pagenumbering{roman}
  \pagestyle{empty}
}

\def\mainmatter{%
  \cleardoublepage%
  \pagenumbering{arabic}
  \pagestyle{fancy}
}

\def\backmatter{%
  \pagestyle{plain}
}

% Created by Yasser González-Fernández <ygonzalezfernandez@gmail.com>