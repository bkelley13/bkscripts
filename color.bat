@Echo Off
(((%* 1>&3) 2>&1) | "c:\Program Files (x86)\GnuWin32\bin\sed.exe" "s,.*,\x1B[33m&\x1B[0m,"

