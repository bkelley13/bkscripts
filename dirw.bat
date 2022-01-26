echo off
cd \work\jet
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
cd \work\jetx
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
cd \work\jet11
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
