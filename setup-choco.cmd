@echo off

: UPGRADE
: choco upgrade all -y

: UNINSTALL (+ dependencies)
: choco uninstall PACKAGE_NAME -x

IF %setupType%=="pc" (
    set apps=steam origin uplay
) ELSE (
    set apps=
)

choco install ^
 ^
git ^
gh ^
openssh ^
7zip ^
curl ^
wget ^
jq ^
 ^
php ^
python ^
nodejs ^
 ^
f.lux ^
vlc ^
everything ^
 ^
googlechrome ^
firefox ^
vscode ^
cmder ^
sublimetext3 ^
discord ^
spotify ^
slack ^
filezilla ^
adobereader ^
%apps% ^
 ^
-f -y
