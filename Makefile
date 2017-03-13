all:
	cd src && mllex parse.lex
	cd src && mlyacc parse.grm
	mlton -verbose 1 -output heron src/heron.mlb

# with_polyml:
#  	cd src && mllex parse.lex
#  	cd src && mlyacc parse.grm
#  	./contrib/sml-buildscripts/polybuild src/heron.mlb
#  	mv src/heron .
