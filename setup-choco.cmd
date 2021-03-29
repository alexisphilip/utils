@echo off

IF %setupType%=="pc" (
    set apps=steam origin uplay
) ELSE (
    set apps=
)

choco install ^
 ^
git ^
openssh ^
7zip ^
curl ^
wget ^
 ^
php ^
python3 ^
nodejs ^
 ^
f.lux ^
vlc ^
everything ^
spotify ^
slack ^
filezilla ^
sublimetext3 ^
vscode ^
discord ^
%apps% ^
 ^
-f -y
