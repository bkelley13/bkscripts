c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet_15414/scm/jet.git c:\work\jet8
cd \work\jet8
git checkout v8.x
cd \work\jet8\build\scripts\grunt
npm install
call grunt pull
call grunt pull-app
call grunt build-vscode-extension
call grunt start-jetty
