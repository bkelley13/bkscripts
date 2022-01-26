c:
echo off
set-location \work\jet
git branch | sed -n "s/^\* //p" | xargs echo \work\jet ":"
set-location \work\jetx
git branch | sed -n "s/^\* //p" | xargs echo \work\jetx ":"
