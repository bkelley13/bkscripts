@echo off
if "%1"=="" GOTO ShowHelp
set targname=%2
if "%2"=="" set targname=%1
zip -r %targname% %1
copy %targname%.zip p:\zips
echo http://slc10wgg.us.oracle.com/z/%targname%.zip
GOTO TheEnd
:ShowHelp
echo "putapp <dirname> [<targname>]"
:TheEnd
