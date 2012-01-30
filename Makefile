all:
	cd AE; make
	cd CP; make
	cd QL; make
	cd QL/BP1; make
	cd QL/BP2; make

clean:
	cd AE; make clean
	cd CP; make clean
	cd QL; make clean
	cd QL/BP1; make clean
	cd QL/BP2; make clean
