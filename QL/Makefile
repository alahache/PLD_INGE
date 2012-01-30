PDF=pdflatex -shell-escape
RM=rm -rfv

all: pdf

re: clean all

pdf:
	${PDF} *.tex;\
	if test -e *.toc;\
	then ${PDF} *.tex;\
	fi

mrproper: clean
	${RM} *.dvi *.pdf

clean:
	${RM} *.aux *.log *.toc *.out *.pyg *.glo *.ist

