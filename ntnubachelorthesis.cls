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
\newcommand{\NTNU}{{N}orwegian {U}niversity of {S}cience and {T}echnology} %the extra {'s protect upper case
\newcommand{\NTNUno}{{N}orges teknisk-naturvitenskapelige universitet} 
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
  \parskip=2pt%
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
\def\thesis@authorD{}
\def\thesis@supervisor{}
\def\thesis@supervisorA{}
\def\thesis@oppdragsgiver{}

\def\nmt@keywords{}
\def\nmt@desc{}
\def\nmt@pub{}

\def\thesis@titleNOR{Use thesistitleNor to insert your title here.}
\def\nmt@keywordsNOR{}
\def\nmt@descNOR{}
\def\nmt@pubNOR{}

\def\nmt@number{}
\def\nmt@appnumber{}
\def\nmt@pagecount{}
\def\nmt@contact{}

\def\thesistitle#1{\def\thesis@title{#1}}
\def\thesisdate#1{\def\thesis@date{#1}}
\def\thesisauthor#1{\def\thesis@author{#1}}
\def\thesisauthorA#1{\def\thesis@authorA{#1}}
\def\thesisauthorB#1{\def\thesis@authorB{#1}}
\def\thesisauthorC#1{\def\thesis@authorC{#1}}
\def\thesisauthorD#1{\def\thesis@authorD{#1}}
\def\thesissupervisor#1{\def\thesis@supervisor{#1}}
\def\thesissupervisorA#1{\def\thesis@supervisorA{#1}}
\def\nmtoppdragsgiver#1{\def\thesis@oppdragsgiver{#1}}

\def\thesisHostInstitution#1{\def\thesis@hostInstitution{#1}}
\def\thesisPublisherText#1{\def\thesis@publishertext{#1}}

\def\nmtkeywords#1{\def\nmt@keywords{#1}}
\def\nmtdesc#1{\def\nmt@desc{#1}}
\def\nmtpub#1{\def\nmt@pub{#1}}

\def\nmtkeywordsNOR#1{\def\nmt@keywordsNOR{#1}}
\def\nmtdescNOR#1{\def\nmt@descNOR{#1}}
\def\nmtpubNOR#1{\def\nmt@pubNOR{#1}}
\def\thesistitleNOR#1{\def\thesis@titleNOR{#1}}


\def\nmtpagecount#1{\def\nmt@pagecount{#1}}
\def\nmtappnumber#1{\def\nmt@appnumber{#1}}
\def\nmtcontact#1{\def\nmt@contact{#1}}

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
  \addtocontents{lof}{\protect\addvspace{5\p@}}%
  \addtocontents{lot}{\protect\addvspace{5\p@}}%
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
%% NMT Frontpage by Simon:
%%

\newcommand{\nmt@frontpagesyear}{%
Use $\backslash$useyear\{<year>\} to set year.
}

\newcommand{\useyear}[1]{%
  \renewcommand{\nmt@frontpagesyear}{#1}
}


\newcommand\nmt@firstpagetext{%
  \noindent Use this class with options\\ 
  ``BSP'' Bachelor i Spillprogrammering,\\
  ``BRD'' Bachelor i drift av nettverk og datasystemer,\\
  ``BIS'' Bachelor i Informasjonssikkerhet,\\
  ``BPU'' Bachelor i Programvareutvikling, \\
  ``BIND'' Bachelor i Ingeniørfad - data. 
}

\newcommand\nmt@secondpagetext{%
  \noindent Use this class with options\\ 
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
\newif\if@nynorsk
\newif\if@english


\DeclareOption{norsk}{
   \@norsktrue 
   \@nynorskfalse 
   \@englishfalse
}

\DeclareOption{english}{
   \@englishtrue 
   \@nynorskfalse
   \@norskfalse
}

\DeclareOption{english}{
   \@englishfalse 
   \@nynorsktrue
   \@norskfalse
}

	\newcommand\nmt@CollegeNameText{%
		Department of Computer Science and Media Technology\\
		\NTNU, 
	}
	
 \if@norsk
	\renewcommand\nmt@CollegeNameText{%
	  	Avdeling for informatikk og medieteknikk\\
	 	\NTNUno, 
	}  
\fi

\DeclareOption{BSP}{%
  \renewcommand\nmt@firstpagetext{%
    \begin{tabular}{c}
    	Bachelor i Spill Programmering\\
    	20 ECTS\\
    	Avdeling for informatikk og medieteknikk\\
    	\NTNUno,\\
    \end{tabular}
  }
  \renewcommand\nmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BRD}{%
  \renewcommand\nmt@firstpagetext{%
    \begin{tabular}{c}
    	Bachelor i drift av nettverk  og datasystemer \\
    	20 ECTS\\
    	Avdeling for informatikk og medieteknikk\\
    	\NTNUno, \\
    \end{tabular}
  }
  \renewcommand\nmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BIND}{%
  \renewcommand\nmt@firstpagetext{%
    \begin{tabular}{c}
    	Bachelor i ingeniørfag – data \\
    	20 ECTS\\
    	Avdeling for informatikk og medieteknikk\\
    	\NTNUno \\
    \end{tabular}
  }
  \renewcommand\nmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BIS}{%
  \renewcommand\nmt@firstpagetext{%
    \begin{tabular}{c}
    	Bachelor i informasjonssikkerhet \\
    	20 ECTS\\
    	Avdeling for informatikk og medieteknikk\\
    	\NTNUno\\
    \end{tabular}
  }
  \renewcommand\nmt@secondpagetext{\thesis@publishertext}
}

\DeclareOption{BPU}{%

  \renewcommand\nmt@firstpagetext{%
    \begin{tabular}{c}
    	Bachelor i programvareutvikling \\
    	20 ECTS\\
    	Avdeling for informatikk og medieteknikk\\
    	\NTNUno\\
    \end{tabular}
  }
  \renewcommand\nmt@secondpagetext{\thesis@publishertext}
}



\ProcessOptions\relax





%% FRONTPAGE GENERATION
\newcommand\makefrontpages{%
	  \makebachelorfrontpages
}




\newcommand\makebachelorfrontpages{%
  \begin{titlepage}%
    %\thispagestyle{empty}
    %\setcounter{page}\z@
		\hypersetup{pageanchor=false}

    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \null\vfil
    \includegraphics[width=200pt]{hovedlogo_eng} \\    
    \vskip 75\p@
    \begin{center}%
      {\fontsize{22}{25}\selectfont \thesis@title}%
\vskip 3em%
{\large
	\lineskip .75em%
   \fontsize{14}{16}\selectfont{ 
   FORFATTERE:}\\
   \begin{tabular}[10cm]{p{1.5cm}l}%
          \rule[-4cm]{0cm}{4cm}&{\fontsize{14}{16}\selectfont 
          \parbox{6cm}{
					\thesis@author \\
          \thesis@authorA \\
          \thesis@authorB \\
          \thesis@authorC \\
 %         \thesis@authorD \\
          } 
          \par}
        \end{tabular}\par}
	\vskip 1em
	\fontsize{14}{16} \selectfont{
	\nmt@firstpagetext \\
	\vskip 1em
  \nmt@frontpagesyear}
	
	
	\end{center}%
	
	\vspace*{\fill}
	{\fontsize{14}{16}\selectfont	
	Veiledere:  
	\hspace*{21.5mm}{	\thesis@supervisor\\
		 \thesis@supervisorA\\ \par}}
		
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
	Dato: & \nmt@frontpagesyear\\
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
	Kontaktperson: & \nmt@contact\\
		&\\
	N\o{}kkelord: & \nmt@keywordsNOR\\
	Antall sider: & \pageref{LastPage}\\
	Antall vedlegg: & \nmt@appnumber\\
	Tilgjengelighet: & \AA{}pen\\ % this needs updating \nmt@pubNOR}\\
		&\\
	\hline\\
	Sammendrag: & \nmt@descNOR\\
  \end{tabular}

% this should be a function call so that the layout is done in a single place. This is currently bad coding but I do not have time to fix it at the moment.  Can be fixed this later.
\cleardoublepage
  
  \newpage
  {%
    \fontsize{20}{24}\selectfont 
    Summary of Graduate Project\\
	\par}
%\addcontentsline{toc}{chapter}{Summary}
%\thispagestyle{empty}
\begin{tabular}{p{0.35\textwidth}@{  }p{0.65\textwidth}}
	Title: & \textbf{\thesis@title}\\
		&\\
	Date: & \nmt@frontpagesyear\\
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
	Contact Person: & \nmt@contact\\
		&\\
	Keywords: & \nmt@keywords\\
	Pages: & \pageref{LastPage}\\
	Attachments: & \nmt@appnumber\\
	Availability: & Open\\ % this needs updating to use \nmt@pub}\\
		&\\
	\hline\\
	Abstract: & \nmt@desc\\
\end{tabular}

		\hypersetup{pageanchor=true}

}
