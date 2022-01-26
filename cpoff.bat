echo Copying offlinePOC to jetty and installing updated offline and jet code...
set OFF_HOME=c:\work\offline
set DEMO_HOME=%JET_HOME%\sandbox\kkinebuc\offlinePOC
set RT_HOME=%JET_HOME%\rt\src\test\webdriver\apps
set JET_CODE=%JET_HOME%\built\code

echo OFF_HOME = %OFF_HOME%
echo DEMO_HOME = %DEMO_HOME%
echo RT_HOME = %RT_HOME%
echo JET_CODE = %JET_CODE%
echo JET_HOME = %JET_HOME%

:buildsource
cp -rf %DEMO_HOME% %RT_HOME%
unzip -o %JET_CODE%\oraclejet.zip -d %RT_HOME%\offlinePOC
cp -rf %OFF_HOME%\dist\debug\*.* %RT_HOME%\offlinePOC\js\libs\mpf


