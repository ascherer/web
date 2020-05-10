# software archæology

this 'project' serves as a playground for [web](https://ctan.org/pkg/web), the
urmother of all things 'literate programming'.

| TeX macros      | TeX engine              | Notes |
| --------------- | ----------------------- | ----- |
| `webmac.tex`    | plain TeX + `xdvipdfmx` | PDF for print without clickable links |
|                 | pdfTeX                  | PDF for print without clickable links |
|                 | XeTeX                   | PDF for print without clickable links |
| `pdfwebmac.tex` | plain TeX               | Undefined comtrol sequence `\pdfoutput` |
|                 | pdfTeX                  | PDF for print and web with clickable links |
|                 | XeTeX                   | Undefined control sequence `\pdfoutput` |
| `xewebmac.tex`  | plain TeX               | Undefined control sequence `\ifdefined` |
|                 | pdfTeX                  | PDF for print without clickable links |
|                 | XeTeX                   | PDF for print and web with clickable links |
