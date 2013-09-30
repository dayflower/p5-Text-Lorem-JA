
#SOURCES:=	text/2363.txt text/44814.txt text/43535.txt text/52960.txt
SOURCES:=	text/43535.txt text/44814.txt

../data/dict.txt:	$(SOURCES)
	cat $^ | mecab -O simple | carton exec perl make_dict.pl --skip-bracket > $@

text/%.txt:	recipe/%.pl
	carton exec perl $<

