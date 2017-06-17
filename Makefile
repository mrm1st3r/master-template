latex = pdflatex -shell-escape -interaction=nonstopmode > /dev/null
file = tex/master-thesis

pdf: uml
	latexmk -pdf -pdflatex="$(latex)" -use-make $(file).tex

uml:
	bin/makeuml

clean:
	git clean -fX

