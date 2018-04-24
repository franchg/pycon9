#!/bin/bash
printf "+-----------------------------------------------------+\n"
printf "| Example of stickytape bundling two scripts together |\n"
printf "+-----------------------------------------------------+\n"


printf "\n+-----------------------------+\n"
printf "| stickytaping echo application |\n"
printf "+-------------------------------+\n"
stickytape ../code/echo/echo.py --output-file echo_bundle.py

printf "\n+---------------------------------+\n"
printf "| Executing stickytaped application |\n"
printf "+-----------------------------------+\n"
python echo_bundle.py
