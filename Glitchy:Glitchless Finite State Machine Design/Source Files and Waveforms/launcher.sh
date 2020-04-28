#!/bin/bash 

echo $'\n------------------- Glitchy FSM --------------------\n'	#Display that Glitchy FSM related files are about to be processed
cd Glitchy_FSM		#Go to the Glitchy FSM folder
./runme.sh		#Run the associated executable

sleep 1	#Wait for 1s

echo $'\n------------------- No Glitch FSM --------------------\n'	#Display that No Glitch FSM related files are about to be processed
cd ..			#Go back one foler
cd No_glitch_FSM	#Go to No Glitch FSM folder
./runme.sh 		#Run the associated executable 

echo $'\n------------------- FINISHED --------------------\n'	#Display that everything is finshed
