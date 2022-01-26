echo Assume you have installed correct tooling version
c:
cd \work
rm -rf JET-Theme-Builder.zip
rm -rf \work\ThemeBuilder4
mkdir ThemeBuilder4
wget http://den00pwq.us.oracle.com:8080/hudson/job/OJET_V4.x/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/nojet/JET-Theme-Builder.zip
cd ThemeBuilder4
unzip ..\JET-Theme-Builder.zip
ojet restore
ojet add sass
ojet create theme mytheme
ojet serve --themes=all:all

