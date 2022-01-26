c:
cd \work
git clone ssh://bob.kelley%40oracle.com@alm.oraclecorp.com:2222/uitech_jet_15414/jet.git \work\jet
cd \work\jet
git checkout master
cd \work\jet\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty

