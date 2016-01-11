%% 'ntnubachelorthesis.cls' - a LaTeX class for bachelor theses at NTNU
%%
%% Copyright (C) 2016 Simon McCallum
%%
%% CHANGE LOG:
%%
%% importing much from the gucthesis.cls template by Ivar Farup
%%
%%
%% TODO:
%%
%%

%% MACRO
\newcommand{\NTNUen}{{N}orwegian {U}niversity of {S}cience and {T}echnology} %the extra {'s protect upper case
\newcommand{\NTNUnor}{{N}orges teknisk-naturvitenskapelige universitet} 
\newcommand{\NTNUgjovik}{{NTNU} i {G}j\o{}vik}
\newcommand{\NTNUalesund}{{NTNU} i \AAlesund}


%% IDENTIFICATION

\xdef\ntnubachelorthesisdate{2016/01/11}
\xdef\ntnubachelorthesisversion{0.1}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ntnubachelorthesis}
  [\ntnubachelorthesisdate\space
   v\ntnubachelorthesisversion\space
   Creative Commons Attribution 2016 Simon McCallum and Ivar Farup ]

%% CLASS FILE COMMANDS

\LoadClass[a4paper]{report}

%% PACKAGE LOADING

\RequirePackage{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{charter}
\RequirePackage{euler}
\RequirePackage{lastpage}
\RequirePackage{babel}
\RequirePackage{enumitem}
\RequirePackage[utf8]{inputenc}     % For utf8 encoded .tex files  % For cross references in pdf
\RequirePackage[pdftex]{graphicx, hyperref} 
\RequirePackage{color}              % For colouring text  

\hypersetup{colorlinks=true,     
		linkcolor=blue,          % color of internal links (change box color with linkbordercolor)
    citecolor=blue,        % color of links to bibliography
    filecolor=blue,      % color of file links
    urlcolor=blue           % color of external links
		}
\setlist[enumerate]{itemsep=0mm, topsep=5pt, partopsep=0mm, parsep=0mm}
\setlist[enumerate,1]{label=\arabic*., ref=\arabic*}
\setlist[enumerate,2]{label=\arabic*., ref=\arabic*}
\setlist[enumerate,3]{label=\alph*., ref=\alph*}
\setlist[itemize]{itemsep=0mm, topsep=5pt, partopsep=0mm, parsep=0mm}
\setlist[itemize,1]{label=$\bullet$}
\setlist[itemize,2]{label=$\circ$}
\setlist[itemize,3]{label=$\cdot$}
%\RequirePackage[absolute]{textpos}



%% MAIN PART

% Page geometry and layout
%\setlength{\TPHorizModule}{30mm}
%\setlength{\TPVertModule}{\TPHorizModule}
%\textblockorigin{10mm}{10mm}


\AtBeginDocument{\baselineskip=14pt%
  \parskip=0pt%
  \parindent=14pt%
  \frenchspacing%
  \setcounter{secnumdepth}{2}%
}
\pagenumbering{roman}           % until first chapter, see below

% Header and footer

\def\thesis@title{Use thesistitle to insert your title here.}
\def\thesis@date{Use thesisdate to insert your date here.}
\def\thesis@author{Use thesisauthor to insert your name here.}
\def\thesis@hostInstitution{Use thesisHostInstitution to insert the location of the defense.}
\def\thesis@publishertext{}

% for bachelor theses with multiple authors
\def\thesis@authorA{}
\def\thesis@authorB{}
\def\thesis@authorC{}
\def\thesis@supervisor{}
\def\thesis@supervisorA{}
\def\thesis@oppdragsgiver{}

\def\thesis@juryA{}
\def\thesis@juryB{}
\def\thesis@juryC{}
\def\thesis@juryD{}


\def\gmt@keywords{}
\def\gmt@desc{}
\def\gmt@pub{}

\def\thesis@titleNOR{Use thesistitleNor to insert your title here.}
\def\gmt@keywordsNOR{}
\def\gmt@descNOR{}
\def\gmt@pubNOR{}

\def\gmt@number{}
\def\gmt@contact{}
\def\gmt@appnumber{}
\def\gmt@pagecount{}

\def\thesistitle#1{\def\thesis@title{#1}}
\def\thesisdate#1{\def\thesis@date{#1}}
\def\thesisauthor#1{\def\thesis@author{#1}}
\def\thesisauthorA#1{\def\thesis@authorA{#1}}
\def\thesisauthorB#1{\def\thesis@authorB{#1}}
\def\thesisauthorC#1{\def\thesis@authorC{#1}}
\def\thesissupervisor#1{\def\thesis@supervisor{#1}}
\def\thesissupervisorA#1{\def\thesis@supervisorA{#1}}
\def\gmtoppdragsgiver#1{\def\thesis@oppdragsgiver{#1}}

\def\thesisHostInstitution#1{\def\thesis@hostInstitution{#1}}
\def\thesisPublisherText#1{\def\thesis@publishertext{#1}}
\def\thesisjuryA#1{\def\thesis@juryA{#1}}
\def\thesisjuryB#1{\def\thesis@juryB{#1}}
\def\thesisjuryC#1{\def\thesis@juryC{#1}}
\def\thesisjuryD#1{\def\thesis@juryD{#1}}



\def\gmtkeywords#1{\def\gmt@keywords{#1}}
\def\gmtdesc#1{\def\gmt@desc{#1}}
\def\gmtpub#1{\def\gmt@pub{#1}}

\def\gmtkeywordsNOR#1{\def\gmt@keywordsNOR{#1}}
\def\gmtdescNOR#1{\def\gmt@descNOR{#1}}
\def\gmtpubNOR#1{\def\gmt@pubNOR{#1}}
\def\thesistitleNOR#1{\def\thesis@titleNOR{#1}}


\def\gmtnumber#1{\def\gmt@number{#1}}
\def\gmtbachelornumber#1{\def\gmt@number{#1}}
\def\gmtcontact#1{\def\gmt@contact{#1}}
\def\gmtappnumber#1{\def\gmt@appnumber{#1}}
\def\gmtpagecount#1{\def\gmt@pagecount{#1}}

\def\ps@ntnuheadings{%
  \def\@oddfoot{\reset@font\hfil\thepage\hfil}
  \def\@oddhead{\underline{\hbox
      to\hsize{\fontsize{7}{9}\selectfont\hfil\thesis@title}}}
  \def\@evenhead{\underline{\hbox
      to\hsize{\fontsize{7}{9}\selectfont\thesis@title\hfil}}}
  \let\@evenfoot=\@oddfoot}
\pagestyle{ntnuheadings}
% Empty page does not have header or footer
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\newif\if@masters
\newif\if@CIMET


% Title page

%%\def\@subtitle{\relax}
%%\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
%%\renewcommand{\maketitle}{
%%	\newpage
%%	\null
%%	\vskip 2em%
%%	\begin{center}%
%%	\let \footnote \thanks
%%	{\LARGE \@title \par}%
%%	\vskip 1.5em%
%%	{\large
%%		\lineskip .5em%
%%		\begin{tabular}[t]{c}%
%%		\@author
%%		\end{tabular}\par}%
%%	\vskip 1em%
%%	{\large \@date}%
%%	\end{center}%
%%	\par
%%	\vskip 1.5em
%%}



\def\thesistitlepage{
  \title{\thesis@title}
  \date{\thesis@date}
  \author{\thesis@author}
  \maketitle
}

% Sectioning commands

\def\section{\@startsection
  {section}%
  {1}%
  {0mm}%
  {-10pt}%
  {4pt}%
  {\normalfont\fontsize{12}{14}\selectfont\bfseries}%
}
   
\def\subsection{\@startsection
  {subsection}%
  {2}%
  {0mm}%
  {-6pt}%
  {2pt}%
  {\normalfont\fontsize{10.5}{14}\selectfont\bfseries}%
}

\def\subsubsection{\@startsection
  {subsubsection}%
  {3}%
  {0mm}%
  {-6pt}%
  {2pt}%
  {\normalfont\normalsize\selectfont\bfseries}%
}

\def\paragraph{\@startsection
  {paragraph}%
  {4}%
  {0mm}%
  {-6pt}%
  {2pt}%
  {\normalfont\normalsize\selectfont\itshape}%
}

\newcounter{firstchapter}       % hack to find out where to start
\c@firstchapter=1               % arabic page numbering, see below

\newcounter{tmpfig}             % hack to have continuous numbering of
\newcounter{tmptab}             % figures and tables, see below

\newcounter{numapp}
\newcommand{\numberofapp}{%
    \immediate\write\@auxout%
      {\string\setcounter{numapp}{\the\c@chapter}}%
}



\renewcommand\chapter{%\if@openright\cleardoublepage\else\clearpage\fi
  \cleardoublepage
%  \thispagestyle{plain}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
  \c@tmpfig=\c@figure           % hack for figure and table numbering
  \c@tmptab=\c@table
  \refstepcounter{chapter}%
  \c@figure=\c@tmpfig
  \c@table=\c@tmptab
  \ifnum\c@firstchapter = 1     % hack for page numbering
  \pagenumbering{arabic}
  \c@page=1 \c@firstchapter=0
  \fi
  \typeout{\@chapapp\space\thechapter.}%
  \phantomsection
  \addcontentsline{toc}{chapter}%
  {\protect\numberline{\thechapter}#1}%
  \else
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
% Add extra space in list of figures and list of tables between
% figures & tables belonging to different chapters:
%  \addtocontents{lof}{\protect\addvspace{10\p@}}%
%  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
  \@topnewpage[\@makechapterhead{{#2}}]%
  \else
  \@makechapterhead{{#2}}%
  \@afterheading
  \fi}
\def\@makechapterhead#1{%
  \vspace*{24\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
    \begin{center}
    \normalfont\fontsize{14}{14}\selectfont\bfseries\thechapter
    \fi
    \normalfont\fontsize{14}{14}\selectfont\bfseries\quad #1
    \end{center}\par\nobreak
    \vskip 12\p@
  }}
\def\@schapter#1{\if@twocolumn
  \@topnewpage[\@makeschapterhead{{#1}}]%
  \else
  \@makeschapterhead{{#1}}%
  \@afterheading
  \fi
  \phantomsection
  \addcontentsline{toc}{chapter}{#1}% Contentsline also for \chapter*
}
\def\@makeschapterhead#1{%
  \vspace*{24\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \begin{center}\fontsize{14}{14} \bfseries  #1\end{center}\par\nobreak
    \vskip 12\p@
  }}

% Table of contents

\def\l@chapter#1#2{\@dottedtocline{1}{0em}{1.5em}{\bf #1}{\bf #2}}

% Table and figure captions

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\fontsize{9}{13}\selectfont #1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \fontsize{9}{13}\selectfont #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% Table and figure numbering without chapter number

\def\thefigure{\@arabic\c@figure}
\def\thetable{\@arabic\c@table}

% Quotes

\renewenvironment{quote}
{\list{}{\rightmargin\leftmargin\fontsize{9}{12}\selectfont}%
\item\relax}
{\endlist}

% Lists (itemize and enumerate)

%% removed the old itemize material as it should be in a package enumitem
%%
%% GMT Frontpage by Kjetil:
%%

\newcommand{\gmt@frontpagesyear}{%
Use $\backslash$useyear\{<year>\} to set year.
}

\newcommand{\useyear}[1]{%
  \renewcommand{\gmt@frontpagesyear}{#1}
}


\newcommand\gmt@firstpagetext{%
  \noindent Use this class with options\\ 
  ``MMT'' Masters i Medieteknikk,\\
  ``MACS'' Masters in Applied Computer Science,\\
  ``MIS'' Masters i Informasjonssikkerhet,\\
  ``CIMET'' Erasmus mundus Masters in Colour Science,\\
  ``BSP'' Bachelor i Spillprogrammering,\\
  ``BRD'' Bachelor i drift av nettverk og datasystemer,\\
  ``BIS'' Bachelor i Informasjonssikkerhet,\\
  ``BPU'' Bachelor i Programvareutvikling, \\
  ``BIND'' Bachelor i Ingeniørfad - data. 
}

\newcommand\gmt@secondpagetext{%
  \noindent Use this class with options\\ 
  ``MMT'' Masters i Medieteknikk,\\
  ``MACS'' Masters in Applied Computer Science,\\
  ``MIS'' Masters i Informasjonssikkerhet,\\
  ``CIMET'' Erasmus mundus Masters in Colour Science,\\
  ``BSP'' Bachelor i Spillprogrammering,\\
  ``BRD'' Bachelor i drift av nettverk og datasystemer,\\
  ``BIS'' Bachelor i Informasjonssikkerhet,\\
  ``BPU'' Bachelor i Programvareutvikling, \\
  ``BIND'' Bachelor i Ingeniør. 
}

	    



%% OPTIONS (declare more here if needed)

\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse%
\geometry{a4paper, left=3.75cm, right=3.75cm, top=3cm, bottom=4cm,
  head=1.2cm, foot=2cm}}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue%
\geometry{a4paper, left=4.5cm, right=3cm, top=3cm, bottom=4cm,
  head=1.2cm, foot=2cm}}

\newif\if@norsk
\newif\if@english


\DeclareOption{norsk}{
   \@norsktrue 
   \@englishfalse
}

\DeclareOption{english}{
   \@englishtrue 
   \@norskfalse
}

	\newcommand\gmt@CollegeNameText{%
		Department of Computer Science and Media Technology\\
		Gj\o{}vik University College, 
	}
	
 \if@norsk
	\renewcommand\gmt@CollegeNameText{%
	  	Avdeling for informatikk og medieteknikk\\
	 	  H\o{}gskolen i Gj\o{}vik, 
	}  
\fi

\DeclareOption{BSP}{%
  \renewcommand\gmt@firstpagetext{%
    \begin{tabular}{ccc}
	Bacheloroppgave&&\\
    	Bachelor i &Spill &Programmering\\
    	20 &ECTS&\\
    	Avdeling for& informatikk &og medieteknikk\\
    	H\o{}gskolen &i Gj\o{}vik, &\gmt@frontpagesyear\\
    \end{tabular}
  }
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BRD}{%
  \renewcommand\gmt@firstpagetext{%
    \begin{tabular}{ccc}
	Bacheloroppgave&&\\
    	Bachelor i & drift av nettverk & og datasystemer \\
    	20 &ECTS&\\
    	Avdeling for& informatikk &og medieteknikk\\
    	H\o{}gskolen &i Gj\o{}vik, &\gmt@frontpagesyear\\
    \end{tabular}
  }
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BIND}{%
  \renewcommand\gmt@firstpagetext{%
    \begin{tabular}{ccc}
	Bacheloroppgave&&\\
    	Bachelor i & ingeniørfag – data &  \\
    	20 &ECTS&\\
    	Avdeling for& informatikk &og medieteknikk\\
    	H\o{}gskolen &i Gj\o{}vik, &\gmt@frontpagesyear\\
    \end{tabular}
  }
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BIS}{%
  \renewcommand\gmt@firstpagetext{%
    \begin{tabular}{ccc}
	Bacheloroppgave&&\\
    	Bachelor i & informasjonssikkerhet &  \\
    	20 &ECTS&\\
    	Avdeling for& informatikk &og medieteknikk\\
    	H\o{}gskolen &i Gj\o{}vik, &\gmt@frontpagesyear\\
    \end{tabular}
  }
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BPU}{%

  \renewcommand\gmt@firstpagetext{%
    \begin{tabular}{ccc}
	Bacheloroppgave&&\\
    	Bachelor i & programvareutvikling &  \\
    	20 &ECTS&\\
    	Avdeling for& informatikk &og medieteknikk\\
    	H\o{}gskolen &i Gj\o{}vik, &\gmt@frontpagesyear\\
    \end{tabular}
  }
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}


\DeclareOption{MMT}{%
  \@masterstrue
  \if@norsk
  	\renewcommand\gmt@firstpagetext{%
  	  Masteroppgave\\
  	  Master i Teknologi - Medieteknikk\\
	   30 ECTS\\
	  \gmt@CollegeNameText
 	}
  \else
	\renewcommand\gmt@firstpagetext{%
	   Master's Thesis\\
	   Master of Science in Media Technology\\
	   30 ECTS\\
	   \gmt@CollegeNameText
	 }
  \fi
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{MACS}{%
  \@masterstrue
  \if@norsk
  	\renewcommand\gmt@firstpagetext{%
  	  Masteroppgave\\
  	  Master in Applied Computer Science\\
	   30 ECTS\\
	  \gmt@CollegeNameText
 	}
  \else
	\renewcommand\gmt@firstpagetext{%
	   Master's Thesis\\
	   Master of Applied Computer Science\\
	   30 ECTS\\
	   \gmt@CollegeNameText
	 }
  \fi
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}


\DeclareOption{MIS}{%
  \@masterstrue
  \if@norsk  
	\renewcommand\gmt@firstpagetext{%
    	  Masteroppgave\\
    	  Master i informasjonssikkerhet\\
	  30 ECTS\\
	  \gmt@CollegeNameText \gmt@frontpagesyear 
	}
  \else
	\renewcommand\gmt@firstpagetext{%
 	  Master's Thesis\\
    	  Master of Science in Information Security\\
  	  30 ECTS\\
 	  \gmt@CollegeNameText \gmt@frontpagesyear 
	}
  \fi
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
% \def@masters
}

\DeclareOption{CIMET}{% not implemented yet
  \@masterstrue
  \@CIMETtrue
  \if@norsk  
	\renewcommand\gmt@firstpagetext{%
    	  Only english for CIMET thesis\\
	\\
	}
  \else
	\renewcommand\gmt@firstpagetext{%
 	  Master's Thesis\\
    	  Master In Colour science\\
       	  30 ECTS\\
	  \gmt@CollegeNameText
	}
  \fi
  \renewcommand\gmt@secondpagetext{\thesis@publishertext}
}

\ProcessOptions\relax


\if@CIMET
\else
\thesisPublisherText{%
  \noindent
  Avdeling for\\
  informatikk og medieteknikk\\
  H\o{}gskolen i Gj\o{}vik\\
  Postboks 191\\
  2802 Gj\o{}vik
  \vskip 3em%
  \noindent
  Department of Computer Science\\
  and Media Technology\\
  Gj\o{}vik University College\\
  Box 191\\
  N-2802 Gj\o{}vik\\
  Norway
}
\fi


%% FRONTPAGE GENERATION
\newcommand\makefrontpages{%
	\if@masters
	  \if@CIMET
	     \makeCIMETfrontpages
	   \else
	     \makemastersfrontpages
	   \fi
	\else
	  \makebachelorfrontpages
	\fi
}


\newcommand\makemastersfrontpages{%
  \begin{titlepage}%
    %\thispagestyle{empty}
    %\setcounter{page}\z@
		\hypersetup{pageanchor=false}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null\vfil
    
    \vskip 165\p@
    \begin{center}%
      {\fontsize{20}{24}\selectfont \thesis@title}%
      \vskip 3em%
      {%\large
        \lineskip .75em%
        \begin{tabular}[t]{c}%
          {\fontsize{14}{16}\selectfont \thesis@author \par} %\@author
        \end{tabular}\par}%
      % \vskip 1.5em%
      % {\large Dato \par}%       % Set date in \large size.
    \end{center}\par
    \@thanks
    \vfill
    \vskip 3em
    \begin{center}%
      \includegraphics[width=70pt]{higlogo} \\
      \medskip
      \gmt@firstpagetext
    \end{center}
  \end{titlepage}

  \newpage
  \thispagestyle{empty}
  \null\vfil
  \vfill
  \vbox{\footnotesize{\gmt@secondpagetext}}
		\hypersetup{pageanchor=true}
}


\newcommand\makeCIMETfrontpages{%
    \begin{titlepage}%
    % \thispagestyle{empty}
    % \setcounter{page}\z@
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null\vfil
    
	\begin{center}
		{\fontsize{16}{20}\selectfont Master Erasmus Mundus in \\ Color in Informatics and Media Technology (CIMET)\\}
	\end{center}
	%\vskip 165\p@
    \vskip 3em
	\begin{center}
		\includegraphics[width=400pt]{CIMETlogo}
      \medskip
    \end{center}
	%\vskip 165\p@
    \vskip 3em
	
    \begin{center}%
      {\fontsize{16}{18}\selectfont \thesis@title \\}%
	  \vskip 1em
	  {\fontsize{14}{16}\selectfont Master Thesis Report}%
      \vskip 4em
	  {\fontsize{14}{16}\selectfont Presented by}
      \vskip 2em
	  
      {%\large
        \lineskip .75em%
        \begin{tabular}[t]{c}%
          {\fontsize{14}{16}\selectfont \thesis@author \par} %\@author
        \end{tabular}\par}%
      % \vskip 1.5em%
      % {\large Dato \par}%       % Set date in \large size.
	  \vskip 2em
	  {\fontsize{14}{16}\selectfont and defended at}
      \vskip 2em
	  {\fontsize{14}{16}\selectfont \thesis@hostInstitution}
	  
    \end{center}\par
    \@thanks
    \vfill
    \vskip 1em
	
	{\fontsize{12}{14}\selectfont Academic Supervisor(s): \thesis@supervisor \\
	\hspace*{50mm} \thesis@supervisorA}
	\vskip 1em
	{\fontsize{12}{14}\selectfont Jury Committee:\hspace*{5mm} \thesis@juryA \\
	\hspace*{40mm} \thesis@juryB\\
	\hspace*{40mm} \thesis@juryC\\
	\hspace*{40mm} \thesis@juryD}
	
  \end{titlepage}

  \newpage
  \thispagestyle{empty}
  \null\vfil
  \vfill
  \vbox{\footnotesize{\gmt@secondpagetext}}
}



\newcommand\makebachelorfrontpages{%
  \begin{titlepage}%
    %\thispagestyle{empty}
    %\setcounter{page}\z@
		\hypersetup{pageanchor=false}

    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \vspace*{6.9mm}
    {%
    \fontsize{14}{16}\selectfont 
    BACHELOROPPGAVE:\\
	\par}
    \hspace*{-5mm}
{

    \hspace{-5mm} \includegraphics[width=130mm,height=70mm]{greybackground} \\ %should be 127 and 67 but front cover wrong
      \vskip -5.5cm % 7 gets to the top of the box
      
        \begin{tabular}[10cm]{p{0.5cm}p{10.2cm}l}%
          &{\fontsize{14}{16}\selectfont \textbf{\thesis@title} \par} &\rule[-7cm]{0cm}{7cm}
        \end{tabular}

\par}
   \fontsize{14}{16}\selectfont 
   FORFATTERE:\\
   \begin{tabular}[10cm]{p{1.5cm}l}%
          \rule[-4cm]{0cm}{4cm}&{\fontsize{14}{16}\selectfont 
          \parbox{6cm}{\thesis@author \\
          \thesis@authorA \\
          \thesis@authorB \\
          \thesis@authorC \\
          
          } 
          \par}
        \end{tabular}\par
  DATO: \\
  \hspace*{21.5mm}{\fontsize{14}{16}\selectfont {\gmt@frontpagesyear} \par}
  \end{titlepage}

 \cleardoublepage
  
  \newpage
  {%
    \fontsize{14}{16}\selectfont 
    Sammendrag av Bacheloroppgaven\\
	\par}
%\addcontentsline{toc}{chapter}{Summary}
%\thispagestyle{empty}
\begin{tabular}{p{0.35\textwidth}@{  }p{0.65\textwidth}}
	Tittel: & \textbf{\thesis@titleNOR}\\
		&\\
	Dato: & \gmt@frontpagesyear\\
		&\\
	Deltakere: & \thesis@author\\
		& \thesis@authorA\\
		& \thesis@authorB\\
		& \thesis@authorC\\
	Veiledere: & \thesis@supervisor\\
		& \thesis@supervisorA\\
		&\\
	Oppdragsgiver: & \thesis@oppdragsgiver\\
		&\\
	Kontaktperson: & \gmt@contact\\
		&\\
	N\o{}kkelord: & \gmt@keywordsNOR\\
	Antall sider: & \pageref{LastPage}\\
	Antall vedlegg: & \gmt@appnumber\\
	Tilgjengelighet: & \AA{}pen\\ % this needs updating \gmt@pubNOR}\\
		&\\
	\hline\\
	Sammendrag: & \gmt@descNOR\\
  \end{tabular}

% this should be a function call so that the layout is done in a single place. This is currently bad coding but I do not have time to fix it at the moment.  Can be fixed this later.
\cleardoublepage
  
  \newpage
  {%
    \fontsize{14}{16}\selectfont 
    Summary of Graduate Project\\
	\par}
%\addcontentsline{toc}{chapter}{Summary}
%\thispagestyle{empty}
\begin{tabular}{p{0.35\textwidth}@{  }p{0.65\textwidth}}
	Title: & \textbf{\thesis@title}\\
		&\\
	Date: & \gmt@frontpagesyear\\
		&\\
	Participants: & \thesis@author\\
		& \thesis@authorA\\
		& \thesis@authorB\\
		& \thesis@authorC\\
	Supervisor: & \thesis@supervisor\\
		& \thesis@supervisorA\\
		&\\
	Employer: & \thesis@oppdragsgiver\\
		&\\
	Contact Person: & \gmt@contact\\
		&\\
	Keywords: & \gmt@keywords\\
	Pages: & \pageref{LastPage}\\
	Attachments: & \gmt@appnumber\\
	Availability: & Open\\ % this needs updating to use \gmt@pub}\\
		&\\
	\hline\\
	Abstract: & \gmt@desc\\
\end{tabular}

		\hypersetup{pageanchor=true}

}
