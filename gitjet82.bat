c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet82
cd \work\jet82
git checkout v8.2.0
cd \work\jet82\
npm install
cd \work\jet82\build\scripts\grunt
call grunt pull
call grunt pull-app
call grunt start-jetty
