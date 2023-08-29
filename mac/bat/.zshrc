set echo

#Welcome world
#xhost +localhost

# Add customizations below this line
set TESTER = `id -un`

export SCRATCHDIR=/Users/bokelle/Sites/scratch 
export SCRATCHHOME=/Users/bokelle/Sites/scratch 
export INSPECTOR_HOME=$SCRATCHHOME/PSC_MOBILE_BOB
export LOC_USER_HOME=/Users/$TESTER/
export HTTP_PROXY="http://www-proxy.us.oracle.com:80"
export HTTPS_PROXY="http://www-proxy.us.oracle.com:80"
export NO_PROXY="localhost,127.0.0.0,.us.oracle.com,.oracle.com,.oraclecorp.com"
export JETVER=jet
export JETHOME=$SCRATCHHOME/$JETVER
export ANT_HOME=$SCRATCHHOME/bin/apache-ant-1.8.2
export EDITOR=/usr/bin/vim
export GRADLE_HOME=/opt/gradle
export ANDROID_SDK_ROOT_DIR=/Users/bokelle/Downloads/android-sdk-macosx/tools
export ANDROID_HOME=/Users/bokelle/Downloads/android-sdk-macosx
export ANDROID_PLATFORM=/Users/bokelle/Downloads/android-sdk-macosx/platform-tools
export PATH=$PATH:~/bat:~/bin:"/Applications/Google Chrome.app/Contents/MacOS:/Applications/Firefox.app/Contents/MacOS"

alias cds="title 'scratch' ; cd $SCRATCHHOME/"
alias dwChrome="open -a 'Google Chrome' --args --user-data-dir='\/Users\/bokelle' --disable-web-security"
alias cdb="title 'sandbox' ; cd $SCRATCHHOME/sandbox"
alias cdt="title '/tmp' ; cd /tmp ; ls"
alias cdc="title 'dyn ui' ; cd $SCRATCHHOME/jetdc ; ls"
alias cdgs="cd /Users/bokelle/Library/Application\ Support/Code\ -\ Insiders/User/globalStorage/oracle.oracle-jet-core"
alias ftpb="/usr/bin/ftp jdevqa-pc1"
alias cdu="title 'bat' ; cd /Users/bokelle/bat"
alias dut="du ~ --exclude .snapshot | sort -n | tail -20"
alias findclass="find -name '*.jar' | grep -v cannot | grep jar | xargs zipdump | grep "
alias cdr="cd $JETHOME"
alias cjs="cd $JETHOME/build/scripts"
alias cjg="cd $JETHOME/build/scripts/grunt"
alias cpd="cp $JETHOME/build/scripts/grunt/dev_properties_mac.json $JETHOME/build/scripts/grunt/my_dev_properties.json"
alias cjp="cd $JETHOME/packages/oraclejet-preact"
alias cjcr="cd $JETHOME/packages/oraclejet-core-pack"
alias cdr="cd $JETHOME"
alias cjb="cd $JETHOME/built/vscode/extensions/oracle-jet-core"
alias cje="cd $JETHOME/dt/extensions/vscode/oracle-jet-core"
alias cjw="cd $JETHOME/rt/src/test/webdriverjs"
alias cjk="cd $JETHOME/rt/src/test/karma-mocha/"
alias cjc="cd $JETHOME/built/apps/components/public_html/cookbook/"
alias cjcb="cd $JETHOME/built/apps/components/public_html/js/jet-composites"
alias cjr="cd $JETHOME/rt/apps/components/public_html/cookbook/appLayout/redwood/card"
alias cjrb="cd $JETHOME/built/apps/components/public_html/content/redwood-card"
alias cjcc="cd $JETHOME/rt/apps/components/public_html/js/jet-composites"
alias cjccb="cd $JETHOME/built/apps/components/public_html/js/jet-composites"
alias cjsb="cd $JETHOME/sandbox/bokelle"
alias cjsa="cd $JETHOME/sandbox/Amy/newCompModel/js/components"
alias cjo="cd $JETHOME/rt/src/main/javascript/oracle/oj/"
alias jv="java -version"
alias pj="ps -ef | grep -i java | grep -v grep | cut -b -80"
alias pjx="ps -ef | grep -i java | grep -v grep | cut -b -220"
alias gt="gnome-terminal"
alias hstart='sudo apachectl start'
alias hre='sudo apachectl restart'
alias hstop='sudo apachectl stop'
alias hcd='cd ~/Sites'
alias jcv="javac -version"
alias prettyjson='python -m json.tool'
echo "starting nvm"
export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use 16 --silent
echo "started"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# bun completions
[ -s "/Users/bokelle/.bun/_bun" ] && source "/Users/bokelle/.bun/_bun"

# bun
export BUN_INSTALL="/Users/bokelle/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias remoteserve='bash $JETHOME/sandbox/Wilson/remoteserve/OCI/remoteserve.sh -n bokelle-dev.subnet3ad1phx.devdevcsphx.oraclevcn.com'
