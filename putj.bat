@echo off
if "%1"=="" GOTO ShowHelp
set targname=%2
if "%2"=="" set targname=%1
copy %targname% p:\js
echo http://jdevqa-pc1.us.oracle.com/bkelley/jet/%targname%
GOTO TheEnd
:ShowHelp
echo "putfj <filename> [<targname>]"
:TheEnd
