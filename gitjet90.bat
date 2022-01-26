c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git \work\jet90
cd \work\jet90
git checkout v9.0.0 
npm install
cd \work\jet90\build\scripts\grunt
call grunt pull

