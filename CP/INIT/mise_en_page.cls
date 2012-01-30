\ProvidesClass{mise_en_page}
 
% classe de base
\LoadClass[a4paper,12pt]{article}
 
% extensions
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb,amsfonts,textcomp}
\RequirePackage{array}
\RequirePackage{supertabular}
\RequirePackage{hhline}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[colorlinks=true]{hyperref}
\RequirePackage{tikz}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage[final]{pdfpages}
\RequirePackage{float}
\RequirePackage{listings}
\RequirePackage{verbatim}
\RequirePackage{moreverb}

% marges
%\geometry{hmargin=2cm, vmargin=4cm}

\setcounter{secnumdepth}{1}

% Marges :
\setlength{\parindent}{0.5cm}
\setlength{\hoffset}{-1.5cm}
\setlength{\oddsidemargin}{1.5cm}  % Marge gauche sur pages impaires   1.2
\setlength{\evensidemargin}{1.5cm} % Marge gauche sur pages paires     0.6
\setlength{\marginparwidth}{54pt} % Largeur de note dans la marge
\setlength{\textwidth}{17cm} % Largeur de la zone de texte (17cm)
\setlength{\voffset}{-1.5cm} % Bon pour DOS
\setlength{\marginparsep}{7pt} % S?paration de la marge
\setlength{\topmargin}{0pt}  % Pas de marge en haut
\setlength{\headheight}{1cm} % Haut de page
\setlength{\headsep}{.5cm} % Entre le haut de page et le texte
\setlength{\footskip}{1cm} % Pied de page + s?paration
\setlength{\topskip}{0cm} % Pied de page + s?paration
\setlength{\textheight}{24.7cm} % Hauteur de la zone de texte

% Style de page :
%\pagestyle{headings}

% En-têtes et pieds de page :
\pagestyle{fancy}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{} \fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[LO]{\bfseries\rightmark}
\fancyhead[RE]{\bfseries\rightmark}
\renewcommand{\headrulewidth}{0.5pt}
\addtolength{\headheight}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{ %\fancyhead{}
%\renewcommand{\headrulewidth}{0pt}
}

% commandes personnelles
\newcommand{\image}[2]{
	\begin{center}
	\includegraphics[width=#2]{./#1}
	\end{center}
}

\def\responsable#1{\def\@responsable{#1}}
\def\redacteurs#1{\def\@redacteurs{, #1}}
\def\objet#1{\def\@objet{#1}}
\def\version#1{\def\@version{#1}}
\def\titre#1{\def\@titre{#1}}
\def\etat#1{\def\@etat{#1}}
\def\projet#1{\def\@projet{#1}}
\def\equipe#1{\def\@equipe{#1}}

% Page de garde
\setlength{\fboxsep}{0.3cm}
\makeatletter
\renewcommand{\@maketitle}{
\thispagestyle{plain}
\newpage
\null
\begin{minipage}{0.5\textwidth}
\begin{flushleft}\Huge\bfseries
\color{CornflowerBlue}{\@projet}\\
\large \color{black}{\@equipe}
\end{flushleft}
\end{minipage}
\begin{minipage}{0.5\textwidth}
\begin{flushright}% \huge
\includegraphics[width=4cm]{insa.png}
\end{flushright}
\end{minipage}
 
 \vskip 10em

 \begin{center}
\color{gray}{\rule[0cm]{15cm}{0.15cm}}\\
  {\Huge \color{black}{\textbf{\@titre}} \par}
\color{gray}{\rule[-0.3cm]{15cm}{0.15cm}}
 \end{center}
\vspace{1cm}
\noindent Rédacteurs : \textbf{\@responsable}\@redacteurs\\
Version : \textbf{\@version}\\
État actuel : \textbf{\@etat}\\
Dernière mise à jour : \textbf{\@date}\\
\vspace{1cm}

\fbox{
\begin{minipage}{0.9\textwidth}
\textbf{Description rapide :}\\
\@objet
\end{minipage}
}

\vfill
\newpage}

% Apparence des titres
\renewcommand{\thesection}{\Alph{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand\section{\newpage\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries\color{MidnightBlue}}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries\color{RoyalBlue}}}
%\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
%                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
%                                     {1.5ex \@plus .2ex}%
%                                     {\normalfont\large\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\underline}}
\renewcommand\subparagraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\textbf}}


\def\@redacteurs{}
\makeatother

% Table des matieres
\newcommand{\tabledesmatieres}{
\setlength{\parskip}{0ex plus 0.5ex minus 0.2ex}
\tableofcontents
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}
\newpage
}

% Historique
\newenvironment{historique}
{
\thispagestyle{fancy}
\large\center{\textbf{Historique du document}}
\vskip 1cm
\begin{tabular}{|p{2cm}|p{4cm}|p{9cm}|}
\hline
Version & Date & Description \\
\hline\hline
}
{
\end{tabular}
\newpage
}

\newcommand{\histo}[3]{
#1 & #2 & #3 \\
\hline
}

% profondeur de la numérotation
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}

% liens
\hypersetup{urlcolor=blue,linkcolor=black,citecolor=black,colorlinks=true}

% espace inter-paragraphe
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}

% Listings :
\lstset{ %
language=XSLT,                % choose the language of the code
basicstyle=\footnotesize\ttfamily,       % the size of the fonts that are used for the code
%numbers=left,                   % where to put the line-numbers
%numberstyle=\footnotesize,      % the size of the fonts that are used for the line-numbers
%stepnumber=1,                   % the step between two line-numbers. If it's 1, each line 
                                % will be numbered
%numbersep=5pt,                  % how far the line-numbers are from the code
backgroundcolor=\color{white},  % choose the background color. You must add \usepackage{color}
showspaces=false,               % show spaces adding particular underscores
showstringspaces=false,         % underline spaces within strings
showtabs=false,                 % show tabs within strings adding particular underscores
frame=single,                   % adds a frame around the code
tabsize=2,                      % sets default tabsize to 2 spaces
captionpos=b,                   % sets the caption-position to bottom
breaklines=true,                % sets automatic line breaking
breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
title=\lstname,                 % show the filename of files included with \lstinputlisting;
%escapeinside={\%*}{*)},         % if you want to add a comment within your code
%morekeywords={*,...}            % if you want to add more keywords to the set
commentstyle=\color{Gray},
stringstyle=\color{BrickRed},
keywordstyle=\color{Sepia},
identifierstyle=\color{OliveGreen},
}

