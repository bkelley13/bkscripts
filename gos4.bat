@echo off
echo Running silent install 
if not exist skineditor.zip goto NOSK
unzip -q skineditor.zip -d c:\sk4
goto THEEND
:NOSK
echo No skin editor found
:THEEND
