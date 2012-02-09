all:
	cd AE; make
	cd ABTNS; make
	cd CP/INIT; make
	cd QL/BP1; make
	cd QL/BP2; make
	cd QL/GDOC; make
	cd QL/PAQP; make
	cd QL/SYNTHESE; make

clean:
	cd AE; make clean
	cd ABTNS; make clean
	cd CP/INIT; make clean
	cd QL/BP1; make clean
	cd QL/BP2; make clean
	cd QL/GDOC; make clean
	cd QL/PAQP; make clean
	cd QL/SYNTHESE; make clean

mrproper:
	cd AE; make mrproper
	cd ABTNS; make mrproper
	cd CP/INIT; make mrproper
	cd QL/BP1; make mrproper
	cd QL/BP2; make mrproper
	cd QL/GDOC; make mrproper
	cd QL/PAQP; make mrproper
	cd QL/SYNTHESE; make mrproper
