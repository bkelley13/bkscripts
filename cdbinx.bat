@echo off
echo Cleaning mywork and system dirs
c:
cd \documents and settings\bokelle\Application Data\JDeveloper
rm -rf system*
cd \ade\bokelle_jdevmain\oracle
rm -rf mywork*
cd \ade\bokelle_jdevmain\oracle\jdeveloper
rm -rf system*
rm -rf mywork*
cd \ade\bokelle_jdevmain\oracle\jdeveloper\jdev\bin
title ADE sanity view
echo Sanity build ready to use...
type version.properties | grep JDEV
