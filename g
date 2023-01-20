% !TeX TS-program = lualatex

\documentclass[
%mathserif,
11pt]{beamer}
\usefonttheme[onlymath]{serif}

\setbeamercolor{frametitle}{fg=black}
\setbeamercolor{lower separation line head}{bg=red}

\usepackage{fontspec}
\usepackage{lipsum}
%\usepackage{hyperref,graphicx}
\definecolor{mycolor}{rgb}{0.722, 0.435, 0.698}% Rule colour
\newfontfamily{\arialblack}{Arial Black}
\setbeamerfont{frametitle}{family=\arialblack}

\makeatletter
\setbeamertemplate{frametitle}{%
  \nointerlineskip%
    \vskip0.3cm%
   \begin{beamercolorbox}[wd=\textwidth]{frametitle}%
    \begin{minipage}[t][1.2cm][b]{\dimexpr\paperwidth-4.6cm\relax}%
        \usebeamerfont*{frametitle}\insertframetitle%
        \ifx\insertframesubtitle\@empty%
          \strut\par%
        \else
          \par{\usebeamerfont*{framesubtitle}{\usebeamercolor[fg]{framesubtitle}\insertframesubtitle}\strut\par}%
        \fi%%
    \end{minipage}%
    \hfill%
    \begin{minipage}[t][1.2cm][b]{2.5cm}
      \hfill\includegraphics[height=1.2cm]{example-image-b}%
    \end{minipage}%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[colsep=1.5pt,wd=\textwidth]{lower separation line head}
  \end{beamercolorbox}
}
\makeatother
% Let's get started

\author[Author, Author]
{
  Author
}

\newenvironment<>{customBlock}[1]{%
  \begin{actionenv}#2%
      \def\insertblocktitle{#1}%
      \par%
      \mode<presentation>{%
        \setbeamercolor{block title}{fg=white,bg=orange!20!black}
       \setbeamercolor{block body}{fg=black,bg=olive!50}
       \setbeamercolor{itemize item}{fg=orange!20!black}
       \setbeamertemplate{itemize item}[triangle]
     }%
      \usebeamertemplate{block begin}}
    {\par\usebeamertemplate{block end}\end{actionenv}}


\usepackage{tikz}
\usepackage[framemethod=tikz]{mdframed}


\newmdenv[tikzsetting={draw=black,fill=white,fill opacity=0.7, line width=4pt},backgroundcolor=none,leftmargin=0,rightmargin=0,innertopmargin=4pt,skipbelow=\baselineskip,%
skipabove=\baselineskip]{TitleBox}
%http://tex.stackexchange.com/questions/38281/transparent-background-for-mdframed-environment

\usepackage{fontawesome} 
%----------------------------------------------------------------------------------------
\begin{document}

\begingroup
 \setbeamertemplate{background canvas}{
  \begin{tikzpicture}[remember picture,overlay,inner sep=0pt,outer sep=0pt]
    \node[anchor=south west] at (current page.south west) {\includegraphics[width=\paperwidth]{example-image-duck}};
    \draw[red,line width=0.1cm] ([yshift=-1.7cm]current page.north west) -- ++(\paperwidth,0);
    \node[anchor=north east] at ([xshift=-0.2cm,yshift=-0.2cm]current page.north east) {\includegraphics[height=1.2cm]{example-image-b}};
  \end{tikzpicture}
  }
  \begin{frame}[plain] 
      \begin{TitleBox}
  \maketitle  
  \end{TitleBox}
\end{frame}
\endgroup

\begin{frame}
    \frametitle{title}
    \begin{center}

\end{center}
\end{frame}
%-----------------------------------
\end{document}
