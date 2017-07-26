latex = pdflatex -shell-escape -interaction=nonstopmode > /dev/null
file = thesis

pdf: uml plot
	latexmk -pdf -pdflatex="$(latex)" -use-make $(file).tex

uml:
	bin/makeuml

plot:
	bin/makeplot

clean:
	git clean -fX

