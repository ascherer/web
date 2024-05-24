@x [0] l.25
\def\title{\MP}
\pdfoutput=1 \sanitizecommand\MP{MetaPost}
@y
\def\title{\MP}
\def\topofcontents{\centerline{\titlefont\title}%\vskip.7in
  \vfill} % this material will start the table of contents page
\ifpdf
\sanitizecommand\MP{MetaPost}
\sanitizecommand\theta{theta}
\sanitizecommand\psi{psi}
\sanitizecommand\alpha{alpha}
\sanitizecommand\beta{beta}
\sanitizecommand\preceq{<=}
\sanitizecommand\prec{<}
\fi
@z
