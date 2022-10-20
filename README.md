# Digital Signal Processing Notes

Notes from Digital Signal Processing course, University of Trieste.

## Compile instructions

Requirements for fully compiling this document are an installed and working TeX
Live distribution, in particular the `xelatex` engine must be available, and a
running console of `gnuplot`. Optional requirements are `octave` along with the
`signal` package to manipulate some plots.

### Linux

1. Download and install a LaTeX distribution (for instance, `texlive`). Package
   `gnuplot` are also required to produce some images and thus to fully compile
   the document.
Some commands to install the **full** `texlive` distribution are the following,
* **Fedora**: run `dnf install texlive-scheme-full gnuplot`
* **Arch Linux**: run `pacman -S texlive-most gnuplot`
* **Debian**: run `apt install texlive-full gnuplot`

Since the full distribution is quite heavy on memory, you might want to look at
some smaller package groups in order to avoid the full installation.

Package `octave` with `signal` package is optionally required to manipulate
some plots, as some of them are produced through octave.
Arch Linux doesn't package `octave-signal`. Installation from Octave's forge or
AUR is advised.

2. Clone the repository and run
```
make
```
In order to clean the repository along with the compiled pdf, run `make clean`.
To compile a new document at any new file change, invoke `make continuous`.

### Windows

1. [Download ad install](https://tug.org/texlive/windows.html) TeX Live
2. Download a full-fledged TeX editor, for instance
   [TeXstudio](https://www.texstudio.org/)
3. Modify its default compiler from `pdflatex` to `xelatex`. To do so, browse
   its settings; under "Compile" section you might find "default compiler".
   Switch that to "XeLaTeX"
4. Open the source file
5. Run "compile" by pressing related button, or press *F6*.
6. [Install gnuplot](http://www.gnuplot.info/).

## Producing latex figures from octave (`.m`) files

Producing latex figures with `octave` involves running the script and adding at the end of it, when the figure is shown in a window, the following line,
```
print -depslatex -mono "-S800,600" "figure-name.tex"
```
which will print the desired figure at `figure-name.tex` and `figure-name-inc.eps`.
