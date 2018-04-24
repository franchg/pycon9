#!/bin/bash
printf "+-----------------------------------------------------------------------------+\n"
printf "| Example of pyinstaller bundling different scripts with complex dependencies |\n"
printf "+-----------------------------------------------------------------------------+\n"


printf "\n+------------------------------------------+\n"
printf "| Pyinstalling TIC TAC TOE Qt5 application |\n"
printf "+------------------------------------------+\n"
pyinstaller -yF ../code/tic_tac_toe.py

printf "\n+----------------------------------+\n"
printf "| Pyinstalling simple JPEG renamer |\n"
printf "+----------------------------------+\n"
pyinstaller -yF ../code/rename_jpg.py

printf "\n+-------------------------------------------------------+\n"
printf "| Pyinstalling video frame extraction tool using ffmpeg |\n"
printf "+-------------------------------------------------------+\n"
pyinstaller -yF ../code/extract_frame.py 

printf "\n+---------------------------------------+\n"
printf "| Executing TIC TAC TOE Qt5 application |\n"
printf "+---------------------------------------+\n"
./dist/tic_tac_toe
