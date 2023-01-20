
    
\documentclass[xcolor={dvipsnames},aspectratio=1610]{beamer}
\setbeamercolor{frametitle}{fg=Black}
\setbeamercolor{lower separation line head}{bg=red}

\usepackage{fontspec}
\usepackage{tcolorbox}
\usepackage{lipsum}

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
      \hfill\includegraphics[height=0.5cm]{example-image-b}%
    \end{minipage}%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[colsep=1.2pt,wd=\textwidth]{lower separation line head}
  \end{beamercolorbox}
}
\makeatother

\usepackage{tikz}
{
  \usebackgroundtemplate{\includegraphics[width=1.0\paperwidth]{background.jpg}}
}
\begin{document}

\begin{frame}
    \frametitle{title}
    \begin{center}
\tcbox[colframe=mycolor, colback=red!5!white]{\textbf{Theorem} : $a x + by = c$}
\end{center}
\end{frame}




\end{document}

enter image description here
