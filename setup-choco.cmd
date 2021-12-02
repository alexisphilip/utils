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
