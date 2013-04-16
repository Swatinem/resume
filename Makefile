all: resume.pdf

resume.html: resume.css

%.html: %.jade
	jade -P $<

%.css: %.styl
	stylus < $< > $@

%.pdf: %.html
	wkhtmltopdf -q $< $@
