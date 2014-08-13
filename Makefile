all:
	pandoc --slide-level 2 -t beamer content/example.md -o beamer/temp_content.tex
	pdflatex beamer/template.tex
	pdflatex beamer/template.tex
	rm template.aux template.log template.nav template.out template.snm template.toc
	rm beamer/temp_content.tex
	mv template.pdf beamer/example.pdf
	#
	pandoc -t html5 --template=revealjs/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/example.md -o revealjs/example.html

html:
	pandoc -t html5 --template=revealjs/template.revealjs --standalone --section-divs --variable theme="journal"   --variable transition="linear" content/example.md -o revealjs/example.html

