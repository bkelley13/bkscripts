c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet7
cd \work\jet7
git checkout v7.x
cd \work\jet7\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty
