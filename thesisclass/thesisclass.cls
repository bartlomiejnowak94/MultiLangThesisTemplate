\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesisclass/thesisclass}

\LoadClass[a4paper,12pt,oneside]{memoir}

% Packages -----------------------------------------------------------------------------------------

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
    family=thesisclass.cls,
    prefix=thescla
}

\ifpdf
    \RequirePackage[T1]{fontenc}
    \RequirePackage[utf8]{inputenc}
    \RequirePackage[
        protrusion=true,
        expansion=true
    ]{microtype}
\fi

\RequirePackage{amsmath}   
\RequirePackage{amssymb}    
\RequirePackage{amsthm}     
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{epigraph}
\RequirePackage{csquotes}
\RequirePackage{hyperref}
\RequirePackage{ifluatex}   
\RequirePackage{ifpdf}      
\RequirePackage{ifxetex}    
\RequirePackage{kantlipsum} 
\RequirePackage{lipsum}     
\RequirePackage{listings}   
\RequirePackage{longtable}  
\RequirePackage{multirow}   
\RequirePackage{setspace}   
\RequirePackage{scrextend} 
\RequirePackage{tocloft}    
\RequirePackage{url}        
\RequirePackage{xkeyval}    
\RequirePackage{xspace}
\RequirePackage{appendix}
\RequirePackage{titlesec}
\RequirePackage{pdfpages}
\RequirePackage{fourier}
\RequirePackage{calc}
\RequirePackage{color}
\RequirePackage{soul}
\RequirePackage{pifont}
\RequirePackage{adforn}
\RequirePackage{etoolbox}
\RequirePackage{pgfornament}
\RequirePackage[margin=1in,headheight=15pt]{geometry}
\RequirePackage[noadjust]{cite}

% \bibliographystyle{IEEEtran}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

% Choose language ----------------------------------------------------------------------------------

\newcommand{\langpol}{
    \newcommand{\@lang}{polish}
    \usepackage[polish]{babel}

	\newtheorem{theorem}{Twierdzenie}
	\newtheorem{lemma}{Lemat}
	\newtheorem{corollary}{Wniosek}
	\newtheorem{definition}{Definicja}
	\newtheorem{axiom}{Aksjomat}
	\newtheorem{assumption}{Założenie}

	\newcommand{\Title}{Tytuł}
	\newcommand{\AuthorName}{Imię i Nazwisko}
	\newcommand{\Supervisors}{Promotorzy}
	\newcommand{\ThesisStatement}{Rozprawa doktorska}
	\newcommand{\NameofDepartment}{Nazwa Wydziału/Instytutu}
	\newcommand{\ScholarStatement}{Praca jest współfinansowana ze stypendium}
	\newcommand{\NameofProject}{``Nazwa projektu''}
	\newcommand{\NumberofProject}{Numer projektu}
	\newcommand{\ProjectStatement}{i projektów}
	\newcommand{\EpigraphText}{``tekst''}
	\newcommand{\EpigraphAuthor}{Autor}
	\newcommand{\Introduction}{Wstęp}
	\newcommand{\Results}{Wyniki}
	\newcommand{\Conclusions}{Wnioski}
	\newcommand{\TitleofAtt}{Tytuł załącznika}
	\newcommand{\Attachments}{Załączniki}
	\newcommand{\AppendixName}{Tytuł dodatku}
	
	\newcommand{\First}{Pierwszy}
	\newcommand{\Second}{Drugi}
	\newcommand{\Third}{Trzeci}
	\newcommand{\Fourth}{Czwarty}
	\newcommand{\Fifth}{Piąty}
	% add more if you want
	
	\AtBeginDocument{
		\renewcommand{\listfigurename}{Spis rysunków}
		\renewcommand{\listtablename}{Spis tabel}
		\renewcommand{\tablename}{Tabela}
	}
}
\newcommand{\langeng}{
    \newcommand{\@lang}{english}
    \usepackage[english]{babel}

	\newtheorem{theorem}{Theorem}
	\newtheorem{lemma}{Lemma}
	\newtheorem{corollary}{Corollary}
	\newtheorem{definition}{Definition}
	\newtheorem{axiom}{Axiom}
	\newtheorem{assumption}{Assumption}

	\newcommand{\Title}{Title}
	\newcommand{\AuthorName}{Name and Surname}
	\newcommand{\Supervisors}{Supervisors}
	\newcommand{\ThesisStatement}{A thesis presented for the degree of\\ Doctor of Philosophy}
	\newcommand{\NameofDepartment}{Name of the Department/Faculty}
	\newcommand{\ScholarStatement}{The work was supported by the funds of scholarship}
	\newcommand{\NameofProject}{``Name of project''}
	\newcommand{\NumberofProject}{Project number}
	\newcommand{\ProjectStatement}{and research projects}
	\newcommand{\EpigraphText}{``text''}
	\newcommand{\EpigraphAuthor}{Author}
	\newcommand{\Introduction}{Introduction}
	\newcommand{\Results}{Results}
	\newcommand{\Conclusions}{Conclusions}
	\newcommand{\TitleofAtt}{Title of Attachment}
	\newcommand{\Attachments}{Attachment}
	\newcommand{\AppendixName}{Title of Appendix}

	\newcommand{\First}{First}
	\newcommand{\Second}{Second}
	\newcommand{\Third}{Third}
	\newcommand{\Fourth}{Fourth}
	\newcommand{\Fifth}{Fifth}
	% add more if you want


	\AtBeginDocument{
		\renewcommand{\listfigurename}{List of Figures}
		\renewcommand{\listtablename}{List of Tables}
		\renewcommand{\tablename}{Table}
	}
}


% Section headers fancy -----------------------------------------------------------------------------------------
\renewcommand{\chaptermark}[1]{%
\ifanappendix
\markboth{\textsc{\appendixname\space\thechapter:\ #1}}{}
\else%
\markboth{\textsc{\MyNumToNamed{\thechapter}\space\@chapapp:\ #1}}{}
\fi
}

\renewcommand{\sectionmark}[1]{
	\markright{\textsc{Section \thesection}}
}

\renewcommand{\subsectionmark}[1]{%
  \markright{\textsc{Section \thesubsection}}%
}

\setsecnumdepth{subsection} %make numbered subsections
\setcounter{tocdepth}{5}


\makepagestyle{myruled}
%add header rule
\makeheadrule {myruled}{\textwidth}{\normalrulethickness}
%add foot rule
% \makefootrule {myruled}{\textwidth}{\normalrulethickness}{\footruleskip}
\makeevenhead {myruled}{\leftmark}{}{\rightmark}
\makeoddhead {myruled}{\leftmark}{}{\rightmark}

\makeevenfoot {myruled}{}{\thepage} {}
\makeoddfoot {myruled}{}{\thepage} {}

\makeatletter % because of \@chapapp
\makepsmarks {myruled}{
\nouppercaseheads
% \createmark {chapter} {both} {shownumber}{\@chapapp\ }{. \ }
% \createmark {section} {right}{shownumber}{} {. \ }
% \createmark {subsection} {right}{shownumber}{} {. \ }
% \createmark {subsubsection}{right}{shownumber}{} {. \ }
% \createplainmark {toc} {both} {\contentsname}
% \createplainmark {lof} {both} {\listfigurename}
% \createplainmark {lot} {both} {\listtablename}
\createplainmark {bib} {both} {\textsc{\bibname}}
% \createplainmark {index} {both} {\indexname}
% \createplainmark {glossary} {both} {\glossaryname}
}