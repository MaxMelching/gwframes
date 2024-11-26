# GWFrames

Gravitational-wave coordinate systems visualized in LaTeX.

## Usage

This package provides three packages, each with one command:

- `cbc_frames_tikz` (command `\drawframes`): plots a selection of source frame, signal frame, and celestial frame that are used to describe gravitational waves emitted by compact binary coalescences.

- `cbc_binary_tikz` (command `\drawbinary`): plots intrinsic parameters of a system of two compact binary objects. Adapted from code originally written by Jannik Mielke.

- `earth_tikz` (command `\drawearth`): plots one side of the Earth. Mainly intended for usage through `\drawframes`. Most of the credit for this code goes to Izaak Neutelings, who provided it on https://tikz.net/astronomy_seasons/.

Keyword arguments to these commands are supported, refer to the examples to get an overview over available options (or do not hesitate to ask me).

## Installation

Unfortunately, adding LaTeX packages is not as easy as Python packages. I do not claim to be an expert in this, but here are two ways I have found to make this work:

1. putting the relevant `.sty` files into the same directory as the `.tex` you plan to use them in. Then, `\usepackage{cbc_frames_tikz}` works. If your folder structure is slightly more complicated, something like `\usepackage{../cbc_frames_tikz}` works too. This is the preferred way in case you are using Overleaf.

1. setting the `TEXINPUTS` variable in your shell, so that the `pdflatex` command can find the `.sty` files in this respository. You can do this manually, or by running the `install.sh` script that comes with this repository, which does this in bash. To confirm that it worked, restart your shell and run `kpsewhich cbc_frames_tikz.sty` (should yield this repository).

<!-- putting them into the directory where your TeX distribution stores packages. This seems to be (at least it is on my Linux machine) `~/usr/share/texmf/tex/`, and the `install.sh` in this package can be used to put the files there. Modify this shell script accordingly, to match varying paths e.g. on different operating systems. -->
