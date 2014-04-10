all: 2DPos.pdf

2DPos.pdf:
	R --vanilla --quiet < calculations.R

clean:
	${RM} energpdf/*.jpeg 
	${RM} radpdf/*.jpeg 
	${RM} pospdf/*.jpeg 
	${RM} verpdf/*.jpeg 
	${RM} *.pdf