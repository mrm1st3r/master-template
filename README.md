# master-template

This is the LaTeX template I created for my master thesis.
A preview document containing examples for it's features
is located under [preview.pdf]()

## Features
Some of the details and features provided by this template:
* KOMAScript class (scrartcl)
* Double sided layout
* living headers
* code formatting
* UML diagrams
    * textual description ([PlantUML](http://plantuml.com))
    * vector graphics
    * same font as in document
* GNUplot Integration
* Makefile
* TeXStudio Compile chain

## Usage
For all features, there are examples provided in the document
to show their usage.

To compile the document via terminal, type:

    make pdf

To include generating the plots and/or diagrams into an IDE
(other than TeXStudio) include ``bin/makeuml`` and/or `bin/makeplot`
before actually compiling the TeX document.

## Dependencies
Dependencies for using this template vary by which parts you'll use.
For a **basic document**, a current tex-Distribution should be enough
(I use TeXlive 2016).
And, as the scripts for building diagrams and plots are shell scripts,
you'll need a **\*nix based operating system**.
If someone ports those scripts to Windows, feel free to open a pull-request.

To use the **PlantUML** integration, you'll of course need a
PlantUML installation in your path, and for converting the generated SVG
file to tex+pdf, **Incscape** additionally.

The **GNUPlot** integration only requires GNUPlot itself.

## Credits
This template is in parts based on [another template](https://bitbucket.org/mflender/abschlussarbeitsvorlage)
by Malte Flender. Specifically the title page and quoting macros.
