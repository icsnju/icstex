% icsartcn.cls : Chinese Report class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{icsartcn}[2013/01/03 Cogenda report class]

\LoadClass[nofonts,12pt,utf8,a4paper,punct,fancyhdr,amstex]{ctexart}

\input{ics-common.def}
\input{ics-font-en.def}
\input{ics-font-cn.def}

\renewcommand\bfseries{\CJKfamily{hei}}
\newcommand\kt{\CJKfamily{kaiti}}

%%%% Chinese Headings
\@ifclasslater{ctexart}{2018/06/19}
{
  \ctexset{
    part = {
      nameformat  = \LARGE\bfseries,
      titleformat = \LARGE\bfseries
    },
    section = {
      format      = \Large\bfseries\flushleft,
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    },
    subsection = {
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    },
    subsubsection = {
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    }
  }
}
{
  \CTEXsetup[nameformat={\LARGE\bfseries}]{part}
  \CTEXsetup[titleformat={\LARGE\bfseries}]{part}

  \CTEXsetup[format={\Large\bfseries\flushleft}]{section}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{section}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsection}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsubsection}

  \renewcommand\figurename{图}
  \renewcommand\tablename{表}
  \renewcommand\lstlistingname{代码}
  \renewcommand\lstlistlistingname{代码}
}

\input{ics-docattr.def}
\renewcommand\ICS@value@classification{内部}

\input{ics-front-cn.def}
\input{ics-struct.def}
\input{ics-style.def}
\input{ics-math.def}

\IfFileExists{./local.def}{\input {./local.def}}{}

\endinput

