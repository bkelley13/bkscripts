c:
cd \work
git clone https://bob.kelley%40oracle.com@alm.oraclecorp.com/uitech/s/uitech_jet-dynamic-components_16111/scm/jet-dynamic-components.git c:\work\jetdc
cd \work\jetdc
git checkout codereview_branch
cd \work\jetdc\build\scripts\grunt
npm install
call grunt build
call grunt serve-samples
