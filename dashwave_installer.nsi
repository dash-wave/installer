Outfile DashwaveInstaller.exe
InstallDir $TEMP
InstallDirRegKey HKCU Software\Dashwave Install_Dir
RequestExecutionLevel user
ShowInstDetails nevershow
Name Dashwave

Section "install"
    CreateDirectory $PROFILE\.dashwave
    SetOutPath $PROFILE\.dashwave
    File dashwave.exe
    CreateShortCut $DESKTOP\Dashwave.lnk $PROFILE\.dashwave\dashwave.exe
    WriteRegStr HKCU "Environment" "PATH" "$PATH;$PROFILE\.dashwave"
    SendMessage $HWNDPARENT 0x1111 0 0
SectionEnd