%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% UFC Beamer Class File
%% author: Félix Julián Gutiérrez
%% description: This file creates a custom beamer class for UNIVERSIDAD NACIONAL DE COLOMBIA
%% It was used the same color hue as the university emblem.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SYSU Beamer Class File
%% author: Nelson Cheung
%% description: beamer template for sysu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{libs/format}

\PassOptionsToPackage{svgnames}{xcolor} 
\LoadClass[compress, 10pt]{beamer}

%% Putting the background image in the frames
%\usebackgroundtemplate{\includegraphics[width=1.0\paperwidth]{libs/sysu_background.png}}
\logo{\includegraphics[scale=0.1]{libs/sysu_logo.png}\hspace{10.0cm}\vspace{-0.4cm}}

%% Packages Used
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{pdfpages}
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{fancybox}
\RequirePackage[footnotesize,hang]{caption}
\RequirePackage{fontspec,xltxtra,xunicode}
% Option management
\RequirePackage{beamerbaseoptions}


% colors
\definecolor{blue_theme}{RGB}{0, 88, 38}
\definecolor{yellow}{RGB}{86, 90, 92}
\definecolor{black}{RGB}{0, 0, 0}
\definecolor{white}{RGB}{255,255, 255}
\definecolor{red_unal}{RGB}{166, 28, 49}
\definecolor{red}{RGB}{215, 0, 0}
\definecolor{green_ufc}{RGB}{0, 146, 62}
\definecolor{green_sysu}{RGB}{0, 88, 38}
\definecolor{green_sysu_dark}{RGB}{5,71,25}

% style of the blocks ufc
\beamerboxesdeclarecolorscheme{blockUFC}{blue_theme}{white}
\beamer@autopdfinfotrue
\beamer@notesnormalstrue


\usecolortheme[named=green_sysu]{structure}

% Layout scheme for outer elements: split header and footer
\useoutertheme[subsection=false]{miniframes}

% Color scheme for outer elements: use background colors
\usecolortheme{whale}

% Layout scheme for inner elements: rounded elements
\useinnertheme{rectangles}

% Color scheme for inner elements: use foreground colors
\usecolortheme{orchid}

% \useinnertheme{rectangles}
% \useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}


\setbeamercolor{section in head/foot}{bg=black, fg=white}
\setbeamercolor{subsection in head/foot}{bg=black, fg=white}
\setbeamercolor{institute in head/foot}{bg=black, fg=white}
\setbeamerfont{block title}{size={}}


%% ---------- bottom fields ---------------------
\setbeamercolor{author in head/foot}{bg=black, fg=white}
\setbeamercolor{title in head/foot}{bg=green_sysu, fg=white}
\setbeamercolor{date in head/foot}{bg=black, fg=white}

% footer style
\defbeamertemplate*{footline}{infolines theme}
{
  \leavevmode%
  \hbox{%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor~~
  \end{beamercolorbox}%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot} \insertshorttitle
    \usebeamerfont{title in head/foot}
  \end{beamercolorbox}%
 
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{2ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
}
\mode
<all>

% command of the example
\renewcommand{\example}[1]{\textcolor{blue_theme}{\textbf{#1}}}
% command of the emphases 
\renewcommand{\emph}[1]{\textcolor{red}{\textbf{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create the blocks of the beamer template

%% draw the blocks
\setbeamertemplate{blocks}[rounded][shadow=true]
% \setbeamercolor{separation line}{use=structure,bg=structure.fg!50!bg} % color on the top 

% block
\setbeamercolor*{block title}{fg=white, bg=green_sysu}
\setbeamercolor*{block body}{fg=black,bg=white}
% alert block
\setbeamercolor*{block title alerted}{fg=white,bg=red}
\setbeamercolor*{block body alerted}{fg=black,bg=white}
% example block
\setbeamercolor*{block title example}{fg=white,bg=green_sysu_dark}
\setbeamercolor*{block body example}{fg=black,bg=white}


% creating the environment the block
\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=green_sysu!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=red!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=green_sysu_dark!70}
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% determine some color for the text
\setbeamercolor*{normal text}{fg=black,bg=white}
\setbeamercolor*{example text}{fg=yellow}
\setbeamercolor*{alerted text}{fg=red}
\setbeamercolor{itemize item}{fg=red_unal!70}
\setbeamercolor{enumerate item}{fg=black!70}
\setbeamercolor{success}{fg=green}

% create the alert box
\newcommand{\alertbox}[1]{
\begin{flushleft}
\fcolorbox{red}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the simple box
\newcommand{\simplebox}[1]{
\begin{flushleft}
\fcolorbox{blue_theme}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the success box
\newcommand{\successbox}[1]{
\begin{flushleft}
\fcolorbox{black}{white}{
\begin{minipage}{0.9\textwidth}
#1
\end{minipage}
}
\end{flushleft}
}

% create the source of the image
\newcommand{\source}[1]{
    \caption*{\textcolor{blue_theme}{Fonte:} {#1}} 
}

% create a command for UNAL
\newcommand{\ufc}{
  \bfseries
  \normalsize{Universidad Nacional de Colombia}
}

% department command
\newcommand{\department}[1]{
    \vspace*{0.2cm}
    \bfseries{}
    \normalsize{#1}
}

% email command
\newcommand{\email}[1]{
    \texttt{
      \href{mailto:#1}{#1}
    }
}

% date in chinese
\newcommand{\ctoday}{\number\year 年 \number\month 月 \number\day 日}

% rename English name to Chinese
\AtBeginDocument{
  \pgfdeclareverticalshading{beamer@topshade}{\paperwidth}{%
    color(0pt)=(bg);
    color(4pt)=(black!50!bg)}
  % renewcommand
  \renewcommand\tablename{表}
  \renewcommand\figurename{图}
  \renewcommand{\algorithmcfname}{算法}
  \renewcommand{\proofname}{证明}
  \renewcommand{\refname}{参考文献}
  \renewcommand{\bibname}{书目}
}