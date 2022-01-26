c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet91
cd \work\jet91
git checkout v9.1.0 
npm install
cd \work\jet91\build\scripts\grunt
call grunt pull

