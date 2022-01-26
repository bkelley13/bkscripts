c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet50
cd \work\jet50
git checkout v5.0.0 
cd \work\jet50\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty

