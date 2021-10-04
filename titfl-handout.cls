\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{titfl-handout}[2015/06/21 v3.5.2 titfl-handout class]

%%
% Declare we're titfl-handout
\newcommand{\@titfl@class}{article}% the base LaTeX class (defaults to the article/handout style)
\newcommand{\@titfl@pkgname}{titfl-handout}% the name of the package (defaults to titfl-handout)

%%
% Load the common style elements
\input{titfl-common.def}


%%
% Set up any handout-specific stuff now

%%
% Abstract

% TODO The abstract should be printed on its own page of the `titlepage'
% option was specified.
\renewenvironment{abstract}
  {\begin{quotation}\if@titfl@sfsidenotes\begin{sffamily}\fi}
  {\if@titfl@sfsidenotes\end{sffamily}\fi\end{quotation}}


%%
% If there is a `titfl-handout-local.tex' file, load it.

\IfFileExists{titfl-handout-local.tex}{%
  \input{titfl-handout-local}%
  \@titfl@info@noline{Loading titfl-handout-local.tex}%
}{}


%%
% End of file
\endinput
