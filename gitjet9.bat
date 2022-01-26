c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet9
cd \work\jet9
git checkout v9.x
npm install
cd \work\jet9\build\scripts\grunt
call grunt pull
call grunt pull-app
call grunt build-vscode-extension
