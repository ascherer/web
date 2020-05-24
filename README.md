# software archæology

this 'project' serves as a playground for [web](https://ctan.org/pkg/web), the
urmother of all things 'literate programming'.

the main goal is to integrate canonical `webmac.tex` with the extended PDF
macros `pdfwebmac.tex` and `xewebmac.tex`, along the lines of `cwebmac.tex`.
the result is called `tlwebmac.tex` and will probably be used to format the
next (and final?) versions of all main WEB programs for publication in
TeX Live 2021.

| TeX macros      | TeX engine                     | Notes about resulting PDF                         |
| --------------- | ------------------------------ | ------------------------------------------------- |
| `tlwebmac.tex`  | plain TeX                      | without clickable links, without outlines         |
|                 | `tex "\let\pdf+"`, `xdvipdfmx` | with clickable links, with outlines               |
|                 | pdfTeX                         | with clickable links, with outlines               |
|                 | XeTeX                          | with clickable links, with outlines               |
| `pdfwebmac.tex` | plain TeX                      | **Undefined control sequence `\pdfoutput`**       |
|                 | pdfTeX                         | with clickable links, with outlines               |
|                 | XeTeX                          | **Undefined control sequence `\pdfoutput`**       |
| `xewebmac.tex`  | plain TeX                      | **Undefined control sequence `\ifdefined`**       |
|                 | pdfTeX                         | **without** clickable links, **without** outlines<br/>**Non-PDF special ignored** |
|                 | XeTeX                          | with clickable links, with outlines               |
