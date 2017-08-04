# Latex Library
The following are setup guidelines for the latex environment.

## Windows
Clone the following repositories (by going to the link on the Web, and choosing "Open in Desktop" as described above).  The local directories suggested but not essential:

- Clone https://github.com/econtoolkit/latex.git to `c:\working\libraries\latex`

- For my coauthors: If you have access to the bibtex repository, clone https://github.com/jlperla/bibtex.git  to `c:\working\libraries\bibtex`

While you could adapt to use any Latex editor, I find that MiKTeX and TexStudio are the easiest.  Adapt the following paths if you installed the repositories in a different location.
- Ensure that [MiKTeX](http://miktex.org) is installed.  Choose "Full Installation" and "Install Missing Packages on the Fly".

- Ensure that [TexStudio](http://texstudio.sourceforge.net) is installed and run it			

 - You have the choice to change where the auxilary files are generated for latex, which makes much cleaner directories.  If you want to change this:

     - Create a folder in windows without spaces or funny characters. For example, `c:\working\texaux` for consistency
     - On Windows, open up a console with `cmd` and thenrun `setx TEXAUX C:/working/texaux`. Then close the cmd console
     - If you change the location of this directory, it is crucial you set the environment variable to use forward slashes and cannot have spaces in the path.

- Go to "Options/Configure TeXstudio" and go to the "Commands" tab and change the "PdfLaTeX" text to:
  `pdflatex.exe -synctex=1 -interaction=nonstopmode -shell-escape -aux-directory=%TEXAUX% -include-directory=C:\working\libraries\latex %.tex`
  - Or if you didn't change the auxilary directory, then just 
    `pdflatex.exe -synctex=1 -interaction=nonstopmode -shell-escape -include-directory=C:\working\libraries\latex %.tex`

- Change the "Commands" tab "BibTeX" text to `bibtex -include-directory=C:\working\libraries\bibtex %TEXAUX%\%`

  - Or if you didn't change the auxilary directory, then just `bibtex -include-directory=C:\working\libraries\bibtex %`

- If you changed the auxilary directory, then in "Options/Configure TeXstudio" and go to the "Build" tab, choose "Advanced Options" and set the Additional Search Paths for the "Log File" to be `%TEXAUX%`

- In the same tab, set the "Build and View" to be "txs:///pdf-chain", and I like to turn off "Check and update bibliography before compiling" and set the Compile Repetitions to be 0 (just keep in mind to manually run bibtex with F8 occasionally)

- Consider installing [Jabref](http://www.jabref.org) for editing bibtex files.  My "BibTex key generator"  pattern is `[authors3][year]`

## OS/X  			
The following are written given an installation of [MacTex](http://tug.org/mactex/mactex-download.html).  The Mac versions of latex are less flexible than the Windows versions, so the parent paths below need to be set more carefully.

- After the MacTex installation, open a terminal to create some folders.  Note, if you are using the Finder instead of a terminal on  OSX Lion and above, the `~/Library` folder is hidden. To open it, use the Finder's Go menu and hold down the Option key to reveal an extra item in the menu. 

   - Create `~/Library/texmf/tex/latex/etk_latex`
   - Create `~/Library/texmf/bibtex/bib/etk_bibtex`

- Clone the following repositories (by going to the link on the Web, and choosing "Open in Desktop" as described above), being careful to put them in these folders.

   - [https://github.com/jlperla/bibtex.git](https://github.com/jlperla/bibtex.git) to `~/Library/texmf/bibtex/bib/etk_bibtex`
   - [https://github.com/econtoolkit/latex.git](https://github.com/econtoolkit/latex.git) to `~/Library/texmf/tex/latex/etk_latex`

- There is no way to set the auxilary file location in MacTex
