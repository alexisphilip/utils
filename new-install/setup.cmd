:::::::::::::::::::::::::::::::::
:: WINSOWS NEW INSTALL - SETUP ::
:::::::::::::::::::::::::::::::::

:: SETUP VARIABLES

set "fonts=Roboto|Montserrat|Oswald|Poppins|Lato"

:: END SETUP VARIABLES



::::::::::::::::::::::::::::::::::::::
:: INSTALLING ALL DEFAULT SOFTWARES ::
::::::::::::::::::::::::::::::::::::::

: UPGRADE
: choco upgrade all -y

: UNINSTALL (+ dependencies)
: choco uninstall PACKAGE_NAME -x

choco install ^
 ^
googlechrome ^
vscode ^
figma ^
cmder ^
sublimetext3 ^
discord ^
spotify ^
slack ^
filezilla ^
adobereader ^
steam ^
uplay ^
ea-app ^
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
-f -y

refreshenv



:::::::::::::::::::::::::::::
:: INSTALLING NPM PACKAGES ::
:::::::::::::::::::::::::::::

npm i ^
docsify-cli ^
eslint ^
express ^
jsdoc ^
request ^
sass ^
-g

refreshenv



:::::::::::::::::::::::::::::::::::
:: CREATING DEFAULT REPOSITORIES ::
:::::::::::::::::::::::::::::::::::

set home=%USERPROFILE%
set work=%home%\Documents

mkdir %home%\.ssh
mkdir %work%\3d
mkdir %work%\code



::::::::::::::
:: SSH KEYS ::
::::::::::::::

:: Creates SSH pub & private keys, known_hosts file and opens the pub key.
ssh-keygen -f %home%\.ssh\id_rsa -t rsa -N ""
copy /y NUL %home%"\.ssh\known_hosts" > NUL
notepad %home%\.ssh\id_rsa.pub



:::::::::::::::::::::::::::::::
:: DOWNLOADS AND INSTALLS FONTS
:::::::::::::::::::::::::::::::

set downloadPath=%USERPROFILE%\Downloads

:: DOWNLOADS ALL THE FONTS INTO  "GOOGLE-FONTS.ZIP" INTO THE DOWNLOADS FOLDER.

wget ^
    -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" ^
    -O %downloadPath%\google-fonts.zip "https://fonts.google.com/download?family=%fonts%"

mkdir %downloadPath%\google-fonts

:: EXTRACTS AND DELETES THE ARCHIVE.

:: e: extract archive, -o: output directory, -y: validate all
7z e %downloadPath%\google-fonts.zip -o%downloadPath%\google-fonts -y
:: -f: forces deletion, -q: no confirmation (silent)
del /f /q %downloadPath%\google-fonts.zip

:: INSTALLS ALL THE FONTS

:: Loops through each TrueType font file in the directory
for %%F in (%downloadPath%\google-fonts\*.ttf) do (
    :: Copies the font file to the Windows Fonts folder
    copy /Y %%F %SystemRoot%\Fonts\
)

:: DELETES THE DOWNLOADED FONTS FOLDER

:: /s: recursive, /q: no confirmation (silent)
rd /s /q %downloadPath%\google-fonts




:: Sets up DOSKEYs (aliases)
:: doskey vps=ssh root@alexisphilip.fr
