cd %JET_HOME%\packages\oraclejet-storybook-addons\theme
call npm run build
cd %JET_HOME%\packages\oraclejet-preact
call npm install
call npm run storybook


