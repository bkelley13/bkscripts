echo Updating mpf to jetty offlinePOC 
set OFF_HOME=c:\work\offline
set RT_HOME=%JET_HOME%\rt\src\test\webdriver\apps

echo OFF_HOME = %OFF_HOME%
echo RT_HOME = %RT_HOME%

:buildsource
cp -rf %OFF_HOME%\dist\debug\* %RT_HOME%\offlinePOC\js\libs\mpf


