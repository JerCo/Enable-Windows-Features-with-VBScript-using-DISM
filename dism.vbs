'dism - deploy image servicing and management tool on Windows Command Line
'on the command line, if you type - dism /online /get-features | more - it will show a list
'of features that can be enabled or disabled from the command line
'dism /online /enable-feature /featurename:<feature name> - will enable features
'dism /online /disable-feature /featurename:<feature name> - will disable features

Set wshShell = CreateObject("WScript.shell")
Set DISMInstall = wshShell.exec("DISM /online /enable-feature /featurename:" & "InboxGames")
do until DISMInstall.status = 1 : wscript.sleep 10 : loop
'strResult = DISMInstall.stdout.readall
wscript.echo "InboxGames Enabled"
'wscript.echo strResult