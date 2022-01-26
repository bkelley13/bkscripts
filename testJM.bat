c:
cd \work
echo first Web app creation
yo oraclejet bkappweb1 web
yo oraclejet bkappweb2 web --template=blank
yo oraclejet bkappweb3 web --template=navBar
yo oraclejet bkappweb4 web --template=navDrawer
yo oraclejet bkappweb5 web --template=http://den00pwq.us.oracle.com:8080/hudson/job/OJET_Build/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/OracleJET_QuickStartBasic.zip
wget http://den00pwq.us.oracle.com:8080/hudson/job/OJET_Build/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/OracleJET_QuickStartBasic.zip
yo oraclejet bkappweb6 web --template=file://OracleJET_QuickStartBasic.zip

echo Now web builds
cd bkappweb1
grunt build:dev
cd ../bkappweb2
grunt build:dev
cd ../bkappweb3
grunt build:dev
cd ../bkappweb4
grunt build:dev
cd ../bkappweb5
grunt build:dev
cd ../bkappweb6
grunt build:dev

echo Now Hybrid app creation
yo oraclejet:hybrid bkapp1 
yo oraclejet:hybrid bkapp2 --template=blank --platforms=android
yo oraclejet:hybrid bkapp3 --template=navBar
yo oraclejet:hybrid bkapp4 --template=navDrawer
yo oraclejet:hybrid bkapp5 --template=http://den00pwq.us.oracle.com:8080/hudson/job/OJET_Build/lastSuccessfulBuild/artifact/apps/components/public_html/public_samples/OracleJET_QuickStartBasic.zip
yo oraclejet:hybrid bkweb6 --template=file://OracleJET_QuickStartBasic.zip
yo oraclejet:hybrid bkapp7 --domain=com.bkqa --title=bkapp7 --template=blank --platforms=android 


echo Now hybrid builds
cd bkapp1
grunt build:dev --platform=android
cd ../bkapp2
grunt build:dev --platform=android
cd ../bkapp3
grunt build:dev --platform=android
cd ../bkapp4
grunt build:dev --platform=android
cd ../bkapp5
grunt build:dev --platform=android
cd ../bkapp6
grunt build:dev --platform=android
cd ../bkapp7
grunt build:dev --platform=android



