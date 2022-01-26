echo Assume you have installed correct tooling version
c:
cd \work
rm -rf \work\ThemeBuilder
mkdir ThemeBuilder
wget http://den00pwq.us.oracle.com:8080/hudson/job/OJET_Build/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/nojet/JET-Theme-Builder.zip
cd ThemeBuilder
unzip ..\JET-Theme-Builder.zip
yo oraclejet:restore
yo oraclejet:add-sass
yo oraclejet:add-theme mytheme
grunt serve --themes=all:all

