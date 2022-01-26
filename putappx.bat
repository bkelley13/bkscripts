@echo off
if "%1"=="" GOTO ShowHelp
set targname=%2
if "%2"=="" set targname=%1
zip -r %targname% %1
copy %targname%.zip p:\testapps2
echo http://jdevqa-pc1.us.oracle.com/bkelley/testapps2/%targname%.zip
GOTO TheEnd
:ShowHelp
echo "putapp <dirname> [<targname>]"
:TheEnd
