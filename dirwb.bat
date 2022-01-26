c:
echo off
cd \work\jet
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jetx
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jety
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jetz
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jet9
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jet10
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work\jetcca
git branch | sed -n "s/^\* //p" | xargs echo %cd% ":"
git branch
cd \work
