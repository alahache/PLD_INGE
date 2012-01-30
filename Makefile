all:
	cd AE; make
	cd AE/STB; make
	cd CP/INIT; make
	cd QL/BP1; make
	cd QL/BP2; make
	cd QL/GDOC; make
	cd QL/PAQP; make

clean:
	cd AE; make clean
	cd AE/STB; make clean
	cd CP/INIT; make clean
	cd QL/BP1; make clean
	cd QL/BP2; make clean
	cd QL/GDOC; make clean
	cd QL/PAQP; make clean

mrproper:
	cd AE; make mrproper
	cd AE/STB; make mrproper
	cd CP/INIT; make mrproper
	cd QL/BP1; make mrproper
	cd QL/BP2; make mrproper
	cd QL/GDOC; make mrproper
	cd QL/PAQP; make mrproper
