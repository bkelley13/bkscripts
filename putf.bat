@echo off
if "%1"=="" GOTO ShowHelp
set targname=%2
if "%2"=="" set targname=%1
copy %targname% p:\
echo http://slc10wgg.us.oracle.com/s/%targname%
GOTO TheEnd
:ShowHelp
echo "putf <filename> [<targname>]"
:TheEnd
