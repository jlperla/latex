% Author: Jesse Perla, Mathias Lux, Christopher Tonetti (c) 2008-2017
% Use, modification and distribution are subject to the 
% Boost Software License, Version 1.0. (See accompanying file 
% LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

%Identification----------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etk-presentation}

%Options------------------------
\RequirePackage{ifthen}
\newboolean{is-etk-draft} %for conditional draft generation
\newboolean{is-etk-short} %for conditional short version
%\newboolean{is-etk-disable-steps} %Turns off generation of steps
%\newboolean{doesauthorthank} %does the author thank
\newboolean{is-pstool} %for conditional draft generation

%The etk-draft option is used to change the display of the footer/header with draft information
\DeclareOption{etk-draft}{\setboolean{is-etk-draft}{true}}
\DeclareOption{etk-short}{\setboolean{is-etk-short}{true}}
\DeclareOption{pstool}{\setboolean{is-pstool}{true}}
%\DeclareOption{etk-disable-steps}{\setboolean{is-etk-disable-steps}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions \relax

%Base Class--------------------------
\LoadClass[xcolor=x11names,compress]{beamer}

%Package Loading---------------------
\RequirePackage{etk-base}
\RequirePackage{etk-presentation-packages}
\RequirePackage{graphicx}
\RequirePackage{appendixnumberbeamer}

%Main Code---------------------------
%% Beamer Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\useoutertheme[subsection=false,shadow]{miniframes}
\useoutertheme{wuerzburg}
\useinnertheme[outline,shadow]{chamfered}
\usecolortheme{shark}
\setbeamercolor{section in head/foot}{fg=red}

%\useinnertheme{default}

%What about these fonts?
%\usefonttheme{serif}
%\usepackage{palatino}


%
%\setbeamerfont{title like}{shape=\scshape}
%\setbeamerfont{frametitle}{shape=\scshape}
%
%\setbeamercolor*{lower separation line head}{bg=DeepSkyBlue4} 
%\setbeamercolor*{normal text}{fg=black,bg=white} 
%\setbeamercolor*{alerted text}{fg=red} 
%\setbeamercolor*{example text}{fg=black} 
%\setbeamercolor*{structure}{fg=black} 
 %
%\setbeamercolor*{palette tertiary}{fg=black,bg=black!10} 
%\setbeamercolor*{palette quaternary}{fg=black,bg=black!10} 
%
%\renewcommand{\(}{\begin{columns}}
%\renewcommand{\)}{\end{columns}}
%\newcommand{\<}[1]{\begin{column}{#1}}
%\renewcommand{\>}{\end{column}}
%\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
%\setbeamertemplate{footline}[page number]
\setbeamertemplate{navigation symbols}{}

%if long presentation environment
\newcommand{\ifdraft}[1]{\ifthenelse{\boolean{is-etk-draft}}{#1}{}}
\newcommand{\ifnotdraft}[1]{\ifthenelse{\boolean{is-etk-draft}}{}{#1}}
\newcommand{\iflong}[1]{\ifthenelse{\boolean{is-etk-short}}{}{#1}}
\newcommand{\ifshort}[1]{\ifthenelse{\boolean{is-etk-short}}{#1}{}}
