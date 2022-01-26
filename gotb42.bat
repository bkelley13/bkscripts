echo Assume you have installed correct tooling version
cd %JET_HOME%\.. 
rm -rf JET-Theme-Builder.zip
rm -rf %JET_HOME%\..\ThemeBuilder42
mkdir %JET_HOME%\..\ThemeBuilder42
wget http://den00pwq.us.oracle.com:8080/hudson/job/OJET_V4.2.0/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/nojet/JET-Theme-Builder.zip
cd %JET_HOME%\..\ThemeBuilder42
unzip ..\JET-Theme-Builder.zip
ojet restore
ojet add sass
ojet create theme mytheme
ojet serve --themes=all:all

