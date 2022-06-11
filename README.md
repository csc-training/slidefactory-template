# slidefactory-template

Empty template repository for new courses and presentations. Uses
[CSC's slidefactory](https://github.com/csc-training/slidefactory) to easily
generate slides in CSC style from markdown.


## Guide

To help you get started, in the directory `guide/` there are some guides,
instructions and handy tools:

- [Syntax Guide for Markdown](guide/syntax-guide.md)
- [How-to: Import an existing Powerpoint presentation](guide/import-powerpoint.md)


## Usage

### Install slidefactory

If you haven't already installed
[slidefactory](https://github.com/csc-training/slidefactory), please do so
with the following command and follow the instructions of the installer:
```bash
make install
```

### Write slides

Use your favourite editor to add new markdown slides (filename ending in
`.md`) into the directory `docs/`. To get started, there is an empty template
in `docs/empty.md` that can be copied.

Please see the [Syntax Guide for Markdown](guide/syntax-guide.md) for the
special syntax used for the slides.


### Convert into HTML slides

Convert your markdown slides into HTML files with the command:
```bash
make
```
The command works both in the main directory as well as in `docs/`. It will
also generate an index file `docs/index.html` containing links to the HTML
slides that can be used to set up e.g. Github pages easily.

Of course, you can also use slidefactory directly, so e.g. with
`slidefactory.sif *.md`. Please see
[slidefactory's documentation](https://github.com/csc-training/slidefactory/README.md)
for more detailed info.


### Convert into HTML and PDF slides

To get also PDFs of your slides, please use the command:
```bash
make pdf
```


### Remove extra files (optional)

If you want, you can also clean up the repository of all the extra files
(guides, empty markdown template) that are not strictly necessary with the
command:
```bash
make purge
```

If you want to remove the HTML (and PDF) files generated, you can do that
with:
```bash
make clean
```
