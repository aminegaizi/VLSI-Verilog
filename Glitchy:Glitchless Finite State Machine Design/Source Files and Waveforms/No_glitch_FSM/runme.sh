#!/bin/bash 

vlog src/*.sv			#Compile Verilog files
vsim tbglitchless -c -do scripts/glitchless.do	#Execture simulation with testbench and do file

design_vision-xg -no_gui -f scripts/dv_script	#Load the verilog code and generate a netlist
mv glitchless.gate.v ./src/	#move the netlist into the source file

vlog src/glitchless.gate.v src/tbglitchless.sv /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v -work gl	#compile gate level netlift, testbench and standard library
vsim gl.tbglitchless -c -do scripts/glitchless.do	#Execute simulation with testbench and do file for gate level netlist
