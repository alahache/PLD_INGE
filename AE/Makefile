PDF=pdflatex -shell-escape
RM=rm -rfv
ECHO=@echo

all: pdf

re: clean all

pdf:
	${PDF} *.tex;\
	if test -e *.toc;\
	then ${PDF} *.tex;\
	fi

mrproper: clean
	${RM} *.dvi; ${RM} *.pdf

clean:
	${RM} *.aux; ${RM} *.log; ${RM} *.toc; ${RM} *out; ${RM} *.pyg; ${RM} *glo; ${RM} *ist

