% $Rev: 109 $
% $Date: 2017-02-17 11:28:16 -0800 (Fri, 17 Feb 2017) $
% $LastChangedBy: jlperla $

% Author: Jesse Perla (c) 2015
% Use, modification and distribution are subject to the 
% Boost Software License, Version 1.0. (See accompanying file 
% LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)


% This is a minimalist version of the article template.  For the most part, it passes options directly to article

%Identification----------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etk-exam}

%Options------------------------
\RequirePackage{ifthen}
\newboolean{is-pstool} %for conditional draft generation

\DeclareOption{pstool}{\setboolean{is-pstool}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions \relax

%Base Class--------------------------
\LoadClass{exam}

%Package Loading---------------------
\RequirePackage{etk-base-no-presentations}

%Main Code---------------------------

%Setup the margins.
\geometry{left=1in,right=1in,top=0.6in,bottom=1in}

\totalformat{[\totalpoints\,points total]}
\bonustotalformat{[\totalbonuspoints\,bonus points total]}
\bracketedpoints

\newcounter{sub}
\setcounter{sub}{1}

\qformat{\vspace{1cm} \textbf{Question \thequestion: \thequestiontitle \hfill} \vspace{0.5cm} 
	\setcounter{sub}{1}}

\newcommand{\subquestion}[1]{\vspace{0.5cm} \textbf{\thequestion.\arabic{sub} \text{  \ \ #1}} \hfill  \vspace{0.3cm} \refstepcounter{sub}}