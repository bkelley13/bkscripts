c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet60
cd \work\jet60
git checkout v6.0.0
cd \work\jet60\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty
