
#.SUFFIXES: .a .b .c
#
#.b.c:
#	conv_b_to_c -i $< -o $@
#
#.a.b:
#	conv_a_to_b -i $< -o $@
#
#clean:
#	rm -f *.b *.c

all: pandoc-data/css/cgit-buttondown.css

pandoc-data/css/cgit-buttondown.css: pandoc-data/css/buttondown.css
	cpp $< | cat -s > $@
