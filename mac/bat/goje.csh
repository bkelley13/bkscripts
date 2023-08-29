## goje - set env vars for jet branches

if ($#argv == 0) then
   echo "Usage: goje <jet>"
   setenv JETBRANCH jet
endif 

setenv JETBRANCH $1
setenv JETVER $JETBRANCH
setenv JETHOME $SCRATCHHOME/$JETBRANCH
alias cdja="cd ${JETHOME}/rt/src/test/webdriver/apps"
alias cdjs="cd $JETHOME/build/scripts"
alias cdjt="cd $JETHOME/rt/src/test/webdriver/src/oj/tests"
alias cdje="cd $JETHOME/built/test/jetty/webapps"

echo Changing JETHOME to $JETHOME
