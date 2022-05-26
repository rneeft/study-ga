\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ou-report-vaf}[2021/09/12 v2 Open Universiteit report class]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{english}
\ProcessOptions\relax
\LoadClass[12pt]{report}
\usepackage{afterpage}
\usepackage{algorithm}
\usepackage{algpseudocode}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[nooneline,footnotesize]{caption}
\RequirePackage{fancyhdr}
\RequirePackage[flushmargin,hang]{footmisc}
\RequirePackage{metalogo}
\RequirePackage{tikz}
\RequirePackage[noindentafter]{titlesec}
\RequirePackage{titletoc}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{xcolor}
\RequirePackage{xkeyval}
\RequirePackage{soul}
\RequirePackage{listings}
\usepackage{pdflscape}
\RequirePackage[titletoc]{appendix}
\RequirePackage{subfigure}
\RequirePackage{graphics}
\RequirePackage{geometry}
\usepackage{tabularx}
\usetikzlibrary{decorations,decorations.pathmorphing,arrows,arrows.meta,automata,trees,backgrounds,petri,shapes,shapes.geometric,quotes,fit,positioning,calc}
\RequirePackage[pagebackref=true,plainpages=false]{hyperref}
\newcommand*\ourmfamily{\rmfamily}
\newcommand*\ousffamily{\sffamily}
\usepackage{enumitem}
\usepackage{hyphenat}
\usepackage{sectsty}

%% The native font is Utopia Regular with Fourier math. We use Latin Modern
%% as a fallback, since Utopia lacks support for sans-serif and monospace.
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lmodern}
\RequirePackage{fourier}

%% The style for titles is small caps.
\def\titlefont{\rmfamily}
\def\titleshape{\scshape}
\def\titlestyle{\titlefont\titleshape\bfseries}
\def\headerstyle{\titlefont\titleshape\bfseries}

\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

%% Define the OU 2020 house style colors.
\definecolor{ou-red}{RGB}{227,6,19}
\definecolor{ou-light-gray}{RGB}{246,246,246}
\definecolor{ou-blue}{RGB}{0,159,227}
\definecolor{ou-purple}{RGB}{109,62,145}
\definecolor{ou-green}{RGB}{0,157,61}
\definecolor{ou-pink}{RGB}{232,46,138}
\definecolor{ou-gray}{RGB}{236,236,236}
\definecolor{ou-white}{cmyk}{0,0,0,0}

%% Use OU red as the color for titles
\colorlet{title}{ou-red}

%% The affiliation is shown in the blue box on the front cover.
\newcommand*\affiliation[1]{\def\@affiliation{#1}}
%% The cover command is used to specify the filename of the optional cover
%% image.
\newcommand*\coverimage[1]{\def\@cover@image{#1}}
%% The covertext command can be used to specify the text printed on the back
%% cover. This text is inserted in a minipage environment and can therefore
%% include line breaks.
\newcommand\covertext[1]{\def\@cover@text{#1}}

%% The cover image is scaled to fill the width of the front cover.
\newlength\@cover@imagewidth
%% The width of the spine if a back cover is present.
\newlength\@cover@spinewidth
\setlength\@cover@spinewidth{0.375in}
%% Width and height of the boxes on the front and back cover.
\newlength\@cover@frontboxwidth
\setlength\@cover@frontboxwidth{4.375in}
\newlength\@cover@frontboxheight
\setlength\@cover@frontboxheight{2.1875in}
\newlength\@cover@fronttextwidth
\newlength\@cover@fronttextheight
\newlength\@cover@backboxwidth
\setlength\@cover@backboxwidth{4.375in}
\newlength\@cover@backboxheight
\setlength\@cover@backboxheight{2.1875in}
\newlength\@cover@backtextwidth
\newlength\@cover@backtextheight
%% Position on the front cover where the corner of both boxes meet.
\newlength\@cover@x
\setlength\@cover@x{0.8125in}
\newlength\@cover@y
\setlength\@cover@y{3in}
%% The margin around text boxes.
\newlength\@cover@margin
\setlength\@cover@margin{12pt}

%% Define the options for the makecover command.
\define@boolkey{cover}{back}[true]{}
\define@boolkey{cover}{nospine}[true]{}
\define@boolkey{cover}{frontbottom}[true]{}
\define@key{cover}{spinewidth}{\setlength\@cover@spinewidth{#1}}
\define@key{cover}{frontboxwidth}{\setlength\@cover@frontboxwidth{#1}}
\define@key{cover}{frontboxheight}{\setlength\@cover@frontboxheight{#1}}
\define@key{cover}{backboxwidth}{\setlength\@cover@backboxwidth{#1}}
\define@key{cover}{backboxheight}{\setlength\@cover@backboxheight{#1}}
\define@key{cover}{x}{\setlength\@cover@x{#1}}
\define@key{cover}{y}{\setlength\@cover@y{#1}}
\define@key{cover}{margin}{\setlength\@cover@margin{#1}}


%% Remove the header and page number on empty pages.
\def\cleardoublepage{%
    \clearpage%
    \if@twoside%
        \ifodd\c@page%
        \else%
            \thispagestyle{empty}%
            \vspace*{\fill}%
            \newpage%
        \fi%
    \fi%
}

%% Page style for title pages.
\fancypagestyle{plain}{%
    \fancyhf{}
    \renewcommand*\headrulewidth{0pt}
    \renewcommand*\footrulewidth{0pt}
    \fancyfoot[C]{\titlefont\thepage}
}

%% Fancy style for the main matter.
\fancypagestyle{mainmatter}{%
    \fancyhf{}
    %% Page numbers on the top left and top right.
    \fancyhead[L,R]{\titlefont\thepage}
    %% Chapter name on the left (even) page.
    \fancyhead[R]{\titlefont\titleshape\nouppercase{\leftmark}}
    %% Section name on the right (odd) page.
    \fancyhead[L]{\titlefont\titleshape\nouppercase{\rightmark}}
}

%% The mainmatter style is default for normal pages.
\pagestyle{mainmatter}

%% The setheader command can be used to print the title of unnumbered chapters
%% in the page header.
\newcommand*\setheader[1]{\markboth{\color{title}#1}{\color{title}#1}}

\setlength{\headheight}{15pt}

%% Change the headrule command (from fancyhdr.sty) to draw the line below the
%% header in the title color.
\renewcommand*\headrule{%
    \if@fancyplain%
        \let\headrulewidth\plainheadrulewidth%
    \fi%
    {\color{title}\hrule\@height\headrulewidth\@width\headwidth}%
    \vskip-\headrulewidth%
}

%% Draw the line above a footnote in the title color as well.
\renewcommand*\footnoterule{%
    \vspace*{-3pt}%
    {\color{title}\hrule width 0.5\textwidth height 0.4pt}%
    \vspace*{2.6pt}%
}


\partfont{\color{ou-red}}

\sectionfont{\color{ou-red}}
\subsectionfont{\color{ou-red}}
\subsubsectionfont{\color{ou-red}}

\titleformat{\chapter}[display]{\normalfont\huge\bfseries\color{ou-red}}   {\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing{\chapter}{0pt}{-32pt}{1cm}


%% Color the bullets of the itemize environment and make the symbol of the third
%% level a diamond instead of an asterisk.
\renewcommand*\labelitemi{\color{title}\textbullet}
\renewcommand*\labelitemii{\color{title}--}
\renewcommand*\labelitemiii{\color{title}$\diamond$}
\renewcommand*\labelitemiv{\color{title}\textperiodcentered}

%% Hyperlinks are title color, except in print mode, when they are all black.
\hypersetup{
    colorlinks = true,
    citecolor = title,
    linkcolor = title,
    urlcolor = title
}

\RequirePackage{csquotes}

%% adding a style for code
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{ou-white},   
    commentstyle=\color{ou-green},
    keywordstyle=\color{ou-red},
    numberstyle=\tiny\color{ou-red},
    stringstyle=\color{ou-purple},
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

%% adding a style for code
\lstdefinestyle{nonrstyle}{
    backgroundcolor=\color{ou-white},   
    commentstyle=\color{ou-green},
    keywordstyle=\color{ou-red},
    numberstyle=\tiny\color{ou-white},
    stringstyle=\color{ou-purple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    numbers=left,
    captionpos=b,
    keepspaces=true,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,          
    tabsize=2
}

%% create style for research question list
\newlist{questions}{enumerate}{2}
\setlist[questions,1]{label=\textbf{RQ\arabic*},ref=RQ\arabic*}
\setlist[questions,2]{label*=.\textbf{\arabic*},ref=\thequestionsi.\arabic*,leftmargin=18pt}

\newcommand\myemptypage{
    \null
    \thispagestyle{empty}
    \newpage
}

%% including acronyms
\usepackage[acronym, toc]{glossaries}
\makenoidxglossaries

\include{acronyms}

%% makes sure every section starts on a new page except when the section is the first on a chapter.
%% credits: https://tex.stackexchange.com/a/47049
\usepackage{etoolbox}
\pretocmd{\section}{%
  \ifnum\value{section}=0 \else\clearpage\fi
}{}{}