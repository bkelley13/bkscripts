c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet5
cd \work\jet5
git checkout v5.x 
cd \work\jet5\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty

