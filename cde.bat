@echo off
cls
title j2ee nightly nondebug
echo j2ee nightly nondebug
c:
cd \jde\jdev\bin
type version.properties | grep JDEV
