# DO NOT REMOVE THE FOLLOWING LINE
source /etc/skel/cshrc-DEFAULT
#set echo

#Welcome world
#xhost +localhost

# Add customizations below this line
#setenv ADE_BETA 1 
set TESTER = `id -un`

if ( -d /home/scratch ) then
	setenv SCRATCHDIR /home/scratch
else if ( -d /scratch ) then
	setenv SCRATCHDIR /scratch
else 
	setenv SCRATCHDIR /tmp
endif

if ( -d $SCRATCHDIR/$TESTER ) then
	setenv SCRATCHHOME $SCRATCHDIR/$TESTER
else 
	setenv SCRATCHHOME $SCRATCHDIR
endif 

setenv ADE_INCLUDE_LABEL_SERVERS "/new/stafas30/vol/ade_win01 /ade_autofs/ade_base"
setenv GRADLE_HOME /opt/gradle
setenv LOC_USER_HOME /home/$TESTER/
setenv PLATFORM linux
setenv ADE_SITE ade_slc
setenv JETBRANCH jet
setenv JETVER1 jet1
setenv JETVER101 jet101
setenv JETVER102 jet102
setenv JETVER112 jet112
setenv JETVER11 jet11
setenv JETVER $JETBRANCH
setenv JETMOBILE $SCRATCHHOME/jetmobile
setenv JMX $SCRATCHHOME/jmx
setenv JETHOME $SCRATCHHOME/$JETVER
setenv JETHOME102 $SCRATCHHOME/$JETVER102
setenv JETHOME112 $SCRATCHHOME/$JETVER112
setenv JETAPPS $JETHOME/rt/src/test/webdriver/apps
setenv JETAPPS102 $JETHOME102/rt/src/test/webdriver/apps
setenv JETAPPSSUBDIR rt/src/test/webdriver/apps
setenv JETTESTSUBDIR rt/src/test/webdriver/src/oj/tests
setenv JETSCRIPTSUBDIR build/scripts
setenv JETGRUNTSUBDIR build/scripts/grunt
setenv JETJETTYSUBDIR built/test/jetty/webapps
setenv ANDROID_HOME $SCRATCHHOME/android
setenv ANDROID_SDK_HOME $SCRATCHHOME/android
setenv ANDROID_SDK_ROOT_DIR $SCRATCHHOME/android/tools
setenv ANDROID_PLATFORM $SCRATCHHOME/android/platform-tools
setenv BROWSER /usr/bin/firefox
setenv CHROMEHOME /opt/google/chrome
# Required for jdev usage, a jdk and a home dir
setenv JDEV_USER_HOME /home/$TESTER/
#setenv JDEV_USER_HOME /tmp/"my dir"/
setenv JDEV_USER_DIR /home/$TESTER/
setenv MYWL /scratch/bokelle/jdps6/wlserver_10.3/server/lib/weblogic.jar
# shiphome used to be /net/stafas30/vol
# For HQ, it's /net/rwsnas413/export/jdev_shiphomes
# For ADC, faster to use adc mirror
setenv SHIPHOME_ROOT /net/slcnas477.us.oracle.com/export
setenv LOCAL_FILE_SERVER /net/slcnas477.us.oracle.com/export/liberte_jdev_pullsan
setenv ASKERNEL_ROOT /ade_autofs/gd17_fmw/ASKERNEL_MAIN_GENERIC.rdd
setenv TNS_ADMIN /home/$TESTER/bat
setenv ANT_HOME $SCRATCHHOME/bin/apache-ant-1.8.2
setenv FF_HOME $SCRATCHHOME/browsers/firefox
setenv EDITOR /usr/bin/vim
setenv NODE_HOME /usr/local/node
setenv BOWER_HOME /usr/local/node/lib/node_modules/bower
setenv http_proxy "http://www-proxy.us.oracle.com:80"
setenv https_proxy $http_proxy
#setenv ftp_proxy $http_proxy
#setenv dns_proxy $http_proxy
#setenv rsync_proxy $http_proxy
#setenv no_proxy "localhost,127.0.0.1,,slc05tcv,.us.oracle.com"
setenv GFHOME $SCRATCHHOME/view_storage/bokelle_jdevmain/oracle/glassfish
#setenv ORACLE_HOME /usr/local/redhat/OracleProd/oracle10g
#setenv ORACLE_HOME $SCRATCHHOME/view_storage/bokelle_ovd_vw
setenv ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
if ( $?LD_LIBRARY_PATH ) then
    if ( $LD_LIBRARY_PATH !~ *firefox* ) then
        setenv LD_LIBRARY_PATH $SCRATCHHOME/browsers/firefox\:${LD_LIBRARY_PATH}
    endif
else
    setenv LD_LIBRARY_PATH $SCRATCHHOME/browsers/firefox
endif
setenv LD_LIBRARY_PATH $ORACLE_HOME/lib:${LD_LIBRARY_PATH}
#default JAVA_HOME /usr/local/packages/jdk7 

#setenv JAVA_HOME /usr/java/jdk1.6.0_45
#setenv JAVA_HOME /usr/java/jdk1.7.0_40
source ~/bat/gojdk

set path=($FF_HOME /usr/local/remote/packages/local/bin ${JAVA_HOME}/bin $ANT_HOME/bin /bin /usr/bin /usr/dev_infra/platform/bin /usr/dev_infra/generic/bin /usr/local/bin /usr/X11R6/bin /usr/local/ade/bin ~ ~/bat ~/bin $ORACLE_HOME/bin $GFHOME/bin /home/bokelle/Komodo-Edit-8/bin $ORACLE_HOME/bin $NODE_HOME/bin $BOWER_HOME/bin $ANDROID_HOME $ANDROID_SDK_ROOT_DIR $ANDROID_PLATFORM $GRADLE_HOME/bin $CHROMEHOME)
# Default Local Timezone set to PST8PDT
# uncomment out the entry below to change it
#
#setenv TZ CST6CDT


alias cdv "title 'ADE jdevmain' ; ade useview jdevmain"
alias lsd "ls -l | grep ^d | awk '{print $9}'"
alias cda "title 'Android SDK' ; cd $SCRATCHHOME/android/tools"
#alias cdj "cd /ade_autofs/ade_linux/JDK6_MAIN_LINUX.rdd"
alias goje "source ~/bat/goje.csh $1"
alias je "source ~/bat/goje.csh $1"
alias cj "source ~/bat/cj.csh"
alias cjm "source ~/bat/cjm.csh"
alias cjmx "source ~/bat/cjmx.csh"
alias cja "source ~/bat/cja.csh"
alias cjs "source ~/bat/cjs.csh"
alias cjg "source ~/bat/cjg.csh"
alias cjt "source ~/bat/cjt.csh"
alias cje "source ~/bat/cje.csh"
alias cdjl "cd /$JETHOME/rt/src/test/testUtils/src/oracle/ojet/automation/test"
alias cdjb "cd /$JETHOME/built/apps/components/public_html"
alias cdjetty  "cd /$JETHOME/built/test/jetty/webapps"
alias ls "ls --color=never"
alias ll "ls -al --color=never"
alias lss "ls $SCRATCHHOME"
alias cdn "title 'shiphome' ; cd /net/adcnas463/export/jdev_shiphomes/jdevadf ; ls"
alias cdf "title 'local_file_server' ; cd $LOCAL_FILE_SERVER/jdevadf ; ls"
alias cdk "title 'hudson askernel' ; cd $ASKERNEL_ROOT ; ls"
alias cdart "title 'artifactory' ; curl http://artifactory-slc.oraclecorp.com/artifactory/fmw-virtual/com/oracle/jdevadf/package/skinning-editor/ | grep 12 | tail -10 "
alias cds "title 'scratch' ; cd $SCRATCHHOME/"
alias cdt "title '/tmp' ; cd /tmp ; ls"
alias cdt1 "title '/tmp/t1' ; cd /tmp/t1 ; ls"
alias cdt2 "title '/tmp/t2' ; cd /tmp/t2 ; ls"
alias cdt3 "title '/tmp/t3' ; cd /tmp/t3 ; ls"
alias cdt4 "title '/tmp/t4' ; cd /tmp/t4 ; ls"
alias cdt5 "title '/tmp/t5' ; cd /tmp/t5 ; ls"
alias cdt6 "title '/tmp/t6' ; cd /tmp/t6 ; ls"
alias cdt7 "title '/tmp/t7' ; cd /tmp/t7 ; ls"
alias cdt8 "title '/tmp/t8' ; cd /tmp/t8 ; ls"
alias cdres "cd /net/stame01/$SCRATCHDIR/qa_data"
alias ftpb "/usr/bin/ftp jdevqa-pc1"
alias ffr "firefox /ade/bokelle_jdevmain/oracle/built/qa-rt/junit-report/index.html"
alias cd1 "vertitle jd1 ; cd $SCRATCHHOME/jd1/jdeveloper/jdev/bin ; setenv MW_HOME $SCRATCHHOME/jd1"
alias cd2 "vertitle jd2 ; cd $SCRATCHHOME/jd2/jdeveloper/jdev/bin ; setenv MW_HOME $SCRATCHHOME/jd2"
alias cd3 "vertitle jd3 ; cd $SCRATCHHOME/jd3/jdeveloper/jdev/bin ; setenv MW_HOME $SCRATCHHOME/jd3"
alias cd4 "vertitle jd4 ; cd $SCRATCHHOME/jd4/jdeveloper/jdev/bin ; setenv MW_HOME $SCRATCHHOME/jd4"
alias cd5 "vertitle jd5 ; cd $SCRATCHHOME/jd5/jdeveloper/jdev/bin ; setenv MW_HOME $SCRATCHHOME/jd5 ; setenv ORACLE_HOME $SCRATCHHOME/jd5/oracle_common"
alias c1 "vertitle t1 ; cd /tmp/t1 "
alias c2 "vertitle t2 ; cd /tmp/t2 "
alias c3 "vertitle t3 ; cd /tmp/t3 "
alias c4 "vertitle t4 ; cd /tmp/t4 "
alias c5 "vertitle t5 ; cd /tmp/t5 "
alias cdu "title 'bat' ; cd /home/bokelle/bat"
alias cdh "title 'home' ;  cd "
alias dut "du ~ --exclude .snapshot | sort -n | tail -20"
alias cdd "clear ; title 'versions' ; getver jd1 ; getver jd2 ; getver jd3 ; getver jd4 ; getver jd5 ; getver sk1 ; getver sk2 ; ade lsviews"
alias goa "title 'jdapps' ; ade useview jdapps"
alias gos1 "unzip skineditor.zip -d $SCRATCHHOME/sk1"
alias gous1 "rm -rf $SCRATCHHOME/sk1/*"
alias gos2 "unzip skineditor.zip -d $SCRATCHHOME/sk2"
alias gous2 "rm -rf $SCRATCHHOME/sk2/*"
alias gos3 "unzip skineditor.zip -d $SCRATCHHOME/sk3"
alias gous3 "rm -rf $SCRATCHHOME/sk3/*"
alias gos4 "unzip skineditor.zip -d $SCRATCHHOME/sk4"
alias gous4 "rm -rf $SCRATCHHOME/sk4/*"
alias findclass "find -name '*.jar' | grep -v cannot | grep jar | xargs zipdump | grep "
alias cdj "cd $JETHOME"
alias cdw "cd $JETHOME/rt/apps/components/public_html"
alias cdsb "cd $JETHOME/rt/apps/sandbox/bokelle"
alias cdatg "cd /net/stdmlina43/ATG/stbcz05_06/builds/fusion/zips/dist/MAIN"
alias cdwasl "cd $SCRATCHHOME/view_storage/bokelle_sherman/oracle/was_profiles/DefaultTopology/DefaultServer/logs/OracleAdminServer"
alias govnc "vncserver :1 -geometry 1176x882"
alias govnc2 "vncserver :1 -geometry 1280x1024"
alias govnc3 "vncserver :1 -geometry 1440x900"
alias gojdk6 "setenv JAVA_HOME /usr/java/jdk1.6.0_24"
alias jv "java -version"
alias jcv "javac -version"
alias getwas "make dist-was_was-setup"
alias startwas "make wasdev_was-start"
alias stopwas "make wasdev_was-stop"
#alias cdkm "source ~/bat/cdkm.csh"
alias cdkm "title 'hudson askernel latest' ; cd $ASKERNEL_ROOT/LATEST/askernel/shiphome ; ls"
#alias cdnm "source ~/bat/cdnm.csh"
alias cdnm "title 'local_file_server latest' ; cd $LOCAL_FILE_SERVER/jdevadf/MAIN/installer ; ls"
alias cdnp "source ~/bat/cdnps.csh"
alias cdna "source ~/bat/cdna.csh"
alias pj "ps -ef | grep -i java | grep -v grep | cut -b -80"
alias pjx "ps -ef | grep -i java | grep -v grep | cut -b -220"
alias showl " slm ; slms ; slp ; slps ; sls ; slss "
alias golp "slps | xargs ade refreshview -label "
alias golm "slms | xargs ade refreshview -label "
alias gouiall " goui ; goui2 ; goui3 ; goui4 ; goui5 "
alias goialla "cdkm ;  goi ; gois ; cdd"
alias gois "gous1 ; gous2 ; cds ; cd sk1 ; cpslarts ; cdd"
alias goiall "gouiall ; goialla "
alias mp "cdhome ; make pullsan ; cdbin ; bu"
alias mpp "cdhome ; make pullsan SHIPHOME_ROOT=$SHIPHOME_ROOT ; cdbin ; bu"
alias mg "make build-glassfish_glassfish-setup"
alias mgs "make build-glassfish_start"
alias mc "make compile-app-sass"
alias fix "cdhome ; make fix_for_linux"
alias gt "gnome-terminal"
alias j "./jdev -su -nonag"
alias jw "./jdev -su -nonag -J-Denable.webview=true "
alias s "./skineditor -su -nonag"
alias sw "./skineditor -su -nonag -J-Denable.webview=true "
alias cds1 'cd `/home/bokelle/bat/cds1.ksh` ; vertitle sk1'
alias cds2 'cd `/home/bokelle/bat/cds2.ksh` ; vertitle sk2'
alias gade 'setenv GFHOME $SCRATCHHOME/view_storage/bokelle_jdevmain/oracle/glassfish'
alias gsherm 'setenv GFHOME $SCRATCHHOME/view_storage/bokelle_sherman/oracle/glassfish'
alias gshup 'setenv GFHOME $SCRATCHHOME/view_storage/bokelle_shup3/oracle/glassfish'
alias glocal 'setenv GFHOME $SCRATCHHOME/glassfish3'
alias cdg 'cd ${GFHOME}/glassfish'
alias cdgd 'cd ${GFHOME}/glassfish/domains/domain1'
alias cdgb 'cd ${GFHOME}/glassfish/bin'
alias cdgl 'cd ${GFHOME}/glassfish/domains/domain1/logs'
alias cdga 'cd ${GFHOME}/glassfish/domains/domain1/lib/applibs'
alias gstart '${GFHOME}/bin/asadmin start-domain domain1'
alias gstartd '${GFHOME}/bin/asadmin start-domain --debug domain1'
alias gstop '${GFHOME}/glassfish/bin/asadmin stop-domain domain1'
alias gdeploy '$GFHOME/bin/asadmin deploy --force --target=server'
alias gundeploy '$GFHOME/bin/asadmin undeploy'
alias hstart 'sudo /etc/init.d/httpd start'
alias hre 'sudo /etc/init.d/httpd restart'
alias hstop 'sudo /etc/init.d/httpd stop'
alias hcd 'cd /var/www/html'
alias glist '$GFHOME/bin/asadmin list-applications'
alias getb 'getbase ; getbasex ; getbase3 ; getbase4; getbasea'
alias cdbin "cd ${ADE_VIEW_ROOT}/oracle/jdeveloper/jdev/bin"
alias cdhome "cd ${ADE_VIEW_ROOT}/jdevadf"
alias cddemo "cd ${ADE_VIEW_ROOT}/oracle/built/adf-richclient-demo"
alias cddom "cd ${ADE_VIEW_ROOT}/oracle/user_projects/domains/jrf1111/bin"
alias ms "cdhome ; make deliver-packages PACKAGE=skinning-editor ; cd ${ADE_VIEW_ROOT}/shiphome_deliverables ; unzip skineditor.zip "
alias cdbins "cd ${ADE_VIEW_ROOT}/shiphome_deliverables/skineditor/skineditor/bin/"
alias ma "cdhome ; mp ; cdhome ; mg ; cdhome ; ms ; cdbin"
alias npml "npm ls -g --depth=0"
