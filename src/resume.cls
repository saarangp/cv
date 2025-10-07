\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2025/10/06 Simple resume class]

% Base class
\LoadClass[a4paper,10pt]{article}

% Common packages
% Page geometry and spacing similar to the sample
\RequirePackage[scale=0.9]{geometry}
\RequirePackage{parskip}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{supertabular}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{fontawesome5}
\newcolumntype{C}{>{\centering\arraybackslash}X}

% Colors
\definecolor{darkblue}{RGB}{0, 0, 139}
\definecolor{gray}{RGB}{169, 169, 169}

% Link styling
\hypersetup{
    colorlinks=true,
    urlcolor=darkblue,
    linkcolor=darkblue,
    citecolor=darkblue
}

% Section formatting (sample style)
\titleformat{\section}{\Large\scshape\raggedright\color{darkblue}}{}{0em}{}[\titlerule]
\titlespacing*{\section}{0pt}{10pt}{10pt}
\titleformat{\subsection}[runin]{\bfseries\color{darkblue}}{}{0em}{}[:]
\titlespacing*{\subsection}{0pt}{0.4em}{0.4em}

% Header helpers
\newcommand{\name}[1]{\textbf{\LARGE #1}}
\newcommand{\labelname}[1]{\textit{\large #1}}
\newcommand{\email}[1]{\href{mailto:#1}{#1}}
\newcommand{\phone}[1]{\textcolor{gray}{#1}}
\newcommand{\location}[1]{\textcolor{gray}{#1}}

\newcommand{\resumeheader}[4]{%
    \begin{center}
        \name{#1} \\[0.2em]
        \labelname{#2} \\[0.2em]
        \email{#3} \\[0.2em]
        \phone{#4}
    \end{center}%
}

\newcommand{\resumesection}[1]{\section*{#1}}

\newcommand{\resumelist}[1]{%
    \begin{itemize}[left=0em]
        #1
    \end{itemize}%
}

\newcommand{\resumefooter}{%
    \begin{center}
        \textcolor{gray}{Last updated: \today}
    \end{center}%
}

\endinput
