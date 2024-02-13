\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exampaper}
\LoadClass[a4paper, 11pt]{ctexart}
\pagenumbering{arabic}

\newcounter{question}

\setcounter{part}{1}
\setcounter{section}{1}
\setcounter{question}{1}

\RequirePackage{geometry}
\geometry{a4paper,scale=0.8}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
% \fancyhf{}
\fancyfoot[C]{\thepage}

% New Commands
\newcommand{\examtitle}[1]{
    \title{\textbf{#1}}
}

\newcommand{\cotitle}[1]{
    \author{\textbf{\LARGE #1}}
}

\newcommand{\fourselections}[4]{
    \begin{tabular*}{0.9\textwidth}{@{\extracolsep{\fill}} l l l l}
        A.#1 & B.#2 & C.#3 & D.#4
    \end{tabular*}

    \par
}

\newcommand{\twoselections}[4]{
    \begin{tabular*}{0.9\textwidth}{@{\extracolsep{\fill}} l l}
        A.#1 & B.#2 \\
        C.#3 & D.#4 \\
    \end{tabular*}

    \par
}

\newcommand{\oneselections}[4]{
    \begin{tabular*}{0.9\textwidth}{@{\extracolsep{\fill}} l}
        A.#1 \\
        B.#2 \\
        C.#3 \\
        D.#4 \\
    \end{tabular*}

    \par
}

\newcommand{\materialtitle}[1]{
    \begin{center}
        \large{\textbf{\heiti{#1}}}
    \end{center}
    \par
}

\newcommand{\dash}[1]{
    \underline{\makebox[#1]{}} 
}

% ReNew Commands
\renewcommand{\part}[1]{ % 部分（第 x 卷）
    \begin{center}
        \Large{\textbf{第 \Roman{part} 卷 \quad #1}}
    \end{center}
    \stepcounter{part}
    \par
}


\renewcommand{\section}[2]{ % 大题（第 x 题）
    \noindent \normalsize{
        \textbf{
            \zhnumber{\thesection}、#1（#2）
        }
    }
    \stepcounter{section}
    \par
}

\renewcommand{\subsection}[1]{ % 小题
    \vspace{0.1cm}
    \noindent \normalsize{
        \thequestion. #1
    }
    \stepcounter{question}
    \par
}

% New Envs
\newenvironment{material}{\fangsong}{\songti}

% ReNew Envs
