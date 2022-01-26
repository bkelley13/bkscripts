rem Usage xcp dir1 dir2
rem  copy any new or changed svn stuff from dir1 to dir2
svn stat | sed "s/^[AM]       /copy %1/g" | sed "s/$/ %2/g" > xcpb.bat
