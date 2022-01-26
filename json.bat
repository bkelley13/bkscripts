c:
cd \work\jetdc\samples\nolakara\dynamic\js\data
start json-server --watch db.json --port 2004 
start json-server --watch mdatarestserver.json --port 3000 
start json-server --watch DFFv2.json --port 2204 --middlewares ..\fix_headers.js 
cd \work\jetdc\samples\server
start node server.js >> node-server.log 
cd \work\jetdc
start grunt serve-samples 

