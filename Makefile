NAME := KeyRack

ALL := \
	exports/${NAME}.stl \
	exports/${NAME}.dxf \
	exports/${NAME}.svg

.PHONY: all clean

all: ${ALL}

exports/${NAME}.stl: exports/${NAME}3D.scad ${NAME}.scad
	openscad -o $@ $<

exports/${NAME}.dxf: exports/${NAME}2D.scad ${NAME}.scad
	openscad -o $@ $<

exports/${NAME}.svg: exports/${NAME}2D.scad ${NAME}.scad
	openscad -o $@ $<

clean:
	rm -f ${ALL}
