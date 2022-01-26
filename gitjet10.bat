c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet10
cd \work\jet10
git checkout v10.0.0
npm install
cd \work\jet10\build\scripts\grunt
call grunt pull
call grunt pull-app
