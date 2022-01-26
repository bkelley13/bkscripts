c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet51
cd \work\jet51
git checkout v5.1.0 
cd \work\jet51\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt start-jetty

