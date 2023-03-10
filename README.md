# Tools-Generate_Simple_DFN

- This tool was developped in HydroSciences Montpellier (http://www.hydrosciences.org/).
- Part of the tool was developped within the framework of KARMA Project (http://karma-project.org/).

<img src="img/LogoKARMA.jpg" width="10%" />   <img src="img/LogoHSM.png" width="6%" />   <img src="img/LogoUM.png" width="5%" />

## Correspondance:
Mohammed Aliouache (mohammed.aliouache@umontpellier.fr), 

Hervé Jourde (herve.jourde@umontpellier.fr)

## Description:
This code generates simple discrete fracture networks based on lattice grid geometry. 

## To use:
The code requires matlab core to be installed.
The working directory contains :	
- a Ladder/ subfolder that allows to generate simple ladder shape DFNs
- a Lattice/ subfolder that allows to generate simple lattice grid
- a P21_like/ subfolder that allows to generate a DFN based on lattice grid by respecting the same P21 distribution as a given DFN
- a Synth_rnd/ subfolder that allows to generate DFNs based on lattice which has anisotropy between x and y directions

### Step 1: 
Define the different parameters in the main function. 

### Step 2: 
Launch the main function in Matlab CLI just by typing Main() or Main. If using the standalone, just launch the program.

### Step 3: 
The segments file is saved in the current subfolder that contains the launched main function. The generated DFN is defined by discretizing fractures into segments (all the intersections are defined as nodes), the segments are then provided in the segments output file as below:

	X1		Y1		X2		Y2		Aperture
	.		.		.		.		.
	.		.		.		.		.
	.		.		.		.		.

X1,Y1,X2 and Y2 are the coordinates of the two points defining each line segment.
