#!/bin/bash
printf "+-------------------------------------------------------------------------------+\n"
printf "| Example of how python compilation with nuitka can improve program performance |\n"
printf "+-------------------------------------------------------------------------------+\n"

printf "\nCompiling pystone.py with nuitka..."
nuitka3 --standalone ../code/pystone.py

printf "\n\nRunning pystone.py with pyhton interpreter:\n"
python ../code/pystone.py

printf "\n\nRunning pystone executable compiled with Nuitka:\n"
./pystone.dist/pystone.exe
