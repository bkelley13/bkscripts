@echo off
echo Running silent install 
if not exist skineditor_ps3.zip goto NOPS3
unzip -q skineditor_ps3.zip -d c:\sk4
goto THEEND
:NOSK
echo No ps3 skin editor found
:THEEND
