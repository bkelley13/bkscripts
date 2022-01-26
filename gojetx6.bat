echo Updating git jet...
c:
set OJET_HOME=c:\work\jet6
set OJET_GRUNT=%OJET_HOME%\build\scripts\grunt

:buildsource
cd %OJET_HOME%
git pull

cd %OJET_GRUNT%
call npm install
call grunt pull pull-app
call grunt build-public-samples-app --app=FixItFast

