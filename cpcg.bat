@echo off
d:
call cp -rf %JET_HOME%\sandbox\kkinebuc\offlinePOC %JET_HOME%\rt\src\test\webdriver\apps
cd %JET_HOME%\rt\src\test\webdriver\apps\offlinePOC
call unzip %JET_HOME%\built\code\oraclejet.zip
cd %JET_HOME%\build\scripts\grunt
call grunt start-jetty
echo OfflinePOC updated, copied to jetty, ready to use
echo http://localhost:7101/offlinePOC/index.html
