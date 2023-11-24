all: pgm.o	hough houghConst houghComp

hough:	houghBase.cu pgm.o
	nvcc houghBase.cu pgm.o -o hough

houghConst: houghConst.cu pgm.o
	nvcc houghConst.cu pgm.o -o houghConst

houghComp: houghComp.cu pgm.o
	nvcc houghComp.cu pgm.o -o houghComp

pgm.o:	common/pgm.cpp
	g++ -c common/pgm.cpp -o ./pgm.o
