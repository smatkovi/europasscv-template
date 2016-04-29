# europasscv-template
### Unofficial LaTeX class for Europass CV template (version 2013)

The europecv2013 class is an unofficial LaTeX implementation of the July 2013 model for curriculum vitae (the [Europass CV](https://europass.cedefop.europa.eu/en/about)), as recommended by the European Commission.

This project is a fork of [leinardi/europecv2013](https://github.com/leinardi/europecv2013).

## Features

* curriculum template compliant to [Europass 2013 version](https://europass.cedefop.europa.eu/en/about)
* profile picture support
* QR Code support (use a [QR Code generator](http://goqr.me/#t=vcard) to generate the picture)
* enhanced support to scientific contents (journal/conference papers, technical reports, review activities; optional automated contents numbering)
* multi-language support
* advanced bibliography management (optional automatic removal of author names)
* automatic generation of academic template (including entire details of publications)
* easy to launch compiling scripts

## Installation on Unix based systems

All you have to do is to clone the repository inside of a specific folder:

```sh
git clone https://github.com/auino/europasscv-template.git
```

See [leinardi/europecv2013](https://github.com/leinardi/europecv2013) for an installation "at the system level".

## Usage

You can use the library to build both your curriculum vitae and a cover letter (see [leinardi/europecv2013](https://github.com/leinardi/europecv2013) for more information)

### Curriculum Vitae

* build your curriculum vitae, starting from `examples/cv_template_*.tex` templates
* configure the `compile_cv.sh` script accordingly to your needs
* change files on the `img` folder accordingly to your needs (use a [QR Code generator](http://goqr.me/#t=vcard) to generate your QR Code)
* compile your curriculum vitae:

  ```sh
  sh compile_cv.sh <file.tex> <publications.bib> <language>
  ```

  The output files `cv_<language>.pdf` and `cv_academic_<language>.pdf` will be produced on the main directory.
  Samples files are available on the [sample output directory](https://github.com/auino/europasscv-template/tree/master/examples/output).

### Cover Letter

* build your cover letter, starting from `examples/cl_template_*.tex` templates
* compile your cover letter:

  ```sh
  sh compile_cl.sh <file.tex> <language>
  ```

  The output file `cl_<language>.pdf` will be produced on the main directory.
  Samples files are available on the [sample output directory](https://github.com/auino/europasscv-template/tree/master/examples/output).

## License

This is a derived work under the terms of the LaTeX project public license (LPPL).
It is based on version 2014-06-27 of `europecv.cls` which is part of the europecv package by Nicola Vitacolonna.
A copy of europecv, including the unmodified version of `europecv.cls` is available  from [http://www.ctan.org/tex-archive/macros/latex/contrib/europecv](http://www.ctan.org/tex-archive/macros/latex/contrib/europecv).
`europecv2013.cls` is part of the included archive `europecv2013.tar.gz` which is released under the LPPL.

See [leinardi/europecv2013](https://github.com/leinardi/europecv2013) for more information.

## Known issues

* for now only English and Italian versions are fully translated

Any contribution is welcome.

See [leinardi/europecv2013](https://github.com/leinardi/europecv2013) for more information.

## Contacts

You can find me on Twitter as [@auino](https://twitter.com/auino).
