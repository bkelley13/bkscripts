c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jetx
cd \work\jetx
git checkout master
npm install
cd \work\jetx\build\scripts\grunt
call grunt pull
call grunt pull-app
call grunt start-jetty

