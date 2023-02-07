# Tools-Generate_Simple_DFN

Aliouache M. 2023

Description:
	This code converts generates simple discrete fracture networks based on lattice grid geometry 

To use:
	The code requieres matlab core to be installed to work (a standalone application with requiered installable programs can be also provided)
	The working directory has :	- a Ladder/ subfolder that allows to generate simple ladder shape DFNs
								- a Lattice/ subfolder that allows to generate simple lattice grid
                                - a P21_like/ subfolder that allows to generate a DFN based on lattice grid by respecting the same P21 distribution as a given DFN
								- a Synth_rnd/ subfolder that allows to generate DFNs based on lattice which has anisotropy between x and y directions
	
	Step 1: define the different parameters in the main function
        The generated DFN will be in following format,
		the DFN is defined by a descritized fractures into segments(all the intersections are defined as a node)
		the segments are then provided in the segments.txt output file as below:
			X1		Y1		X2		Y2		Aperture
			.		.		.		.		.
			.		.		.		.		.
			.		.		.		.		.
		
		X1,Y1,X2 and Y2 are the coordinates of the two points defining each line segment.
		
	Step 2: After choosing the parameters, Launch the main function in Matlab CLI just by typing Main() or Main. If using the standalone, it will be automatically execute the function in CMD when launching the programs
	
	Step 3: the segments file is saved in the current subfolder that contains the launched main function
