% $Rev: 16 $
% $Date: 2015-07-02 10:03:30 -0700 (Thu, 02 Jul 2015) $
% $LastChangedBy: jlperla $

% Author: Jesse Perla (c) 2008, 2012, 2014
% Use, modification and distribution are subject to the 
% Boost Software License, Version 1.0. (See accompanying file 
% LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)


% This is a minimalist version of the article template.  For the most part, it passes options directly to article

%Identification----------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etk-article}

%Options------------------------
\RequirePackage{ifthen}
\newboolean{is-etk-draft} %for conditional draft generation
\newboolean{is-pstool} %for conditional draft generation

%The etk-draft option is used to change the display of the footer/header with draft information
\DeclareOption{etk-draft}{\setboolean{is-etk-draft}{true}}
\DeclareOption{pstool}{\setboolean{is-pstool}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

%Base Class--------------------------
\LoadClass{article}

%Package Loading---------------------
\RequirePackage{etk-base-no-presentations}

%Main Code---------------------------

%Setup the margins.
\geometry{left=1in,right=1in,top=0.6in,bottom=1in}
