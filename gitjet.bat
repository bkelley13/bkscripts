c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet
cd \work\jet
git checkout master
call npm install
cd \work\jet\build\scripts\grunt
call grunt build
call grunt pull-app

