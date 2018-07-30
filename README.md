# Latex Library
**LARGELY DEPRECATED**  Keeping around only for backwards compatibility.
## Windows
While you could adapt to use any Latex editor, I find that MiKTeX and TexStudio are the easiest.  Adapt the following paths if you installed the repositories in a different location.
- Ensure that [MiKTeX](http://miktex.org) is installed.  Choose "Full Installation" and "Install Missing Packages on the Fly".
- Consider [VS Code](https://github.com/econtoolkit/tutorials/blob/master/vscode.md#setup-for-latex) as an editor
- Another editor is [TexStudio](http://texstudio.sourceforge.net)
 - Go to "Options/Configure TeXstudio" and go to the "Commands" tab and change the "PdfLaTeX" text to:
    `pdflatex.exe -synctex=1 -interaction=nonstopmode -shell-escape %.tex`

- Consider installing [Jabref](http://www.jabref.org) for editing bibtex files.  My "BibTex key generator"  pattern is `[authors3][year]`
