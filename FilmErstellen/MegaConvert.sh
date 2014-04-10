jpeg2yuv -v 1 -I p -f 25 -j Pos%09d.jpeg | \
	mpeg2enc -V 500 --no-constraints -q 1 -b 12000 -l m -f 8 -o PosMov.mpg

jpeg2yuv -v 1 -I p -f 25 -j Radius%09d.jpeg | \
    mpeg2enc -V 500 --no-constraints -q 1 -b 12000 -l m -f 8 -o RadiusMov.mpg

jpeg2yuv -v 1 -I p -f 25 -j Raddist%09d.jpeg | \
    mpeg2enc -V 500 --no-constraints -q 1 -b 12000 -l m -f 8 -o RadsistMov.mpg