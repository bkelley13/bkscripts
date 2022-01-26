c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet52
cd \work\jet52
git checkout v5.2.0 
cd \work\jet52\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty

