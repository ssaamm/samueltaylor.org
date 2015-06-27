CSSDIR=static/css
MAINSTYLE=$(CSSDIR)/style.css
MAINSASS=$(CSSDIR)/style.sass
OTHERCSS=$(CSSDIR)/pure.css $(CSSDIR)/grids-responsive.css

site: $(MAINSTYLE)

$(MAINSTYLE): $(MAINSASS) $(OTHERCSS)
	cat $(OTHERCSS) > $(MAINSTYLE)
	sass $(MAINSASS) >> $(MAINSTYLE)
	java -jar /home/sam/dev/tools/yuicompressor-2.4.8.jar $(MAINSTYLE) > tmp
	mv tmp $(MAINSTYLE)
