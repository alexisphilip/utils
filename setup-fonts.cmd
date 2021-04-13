:: https://stackoverflow.com/questions/12946384/windows-install-fonts-from-cmd-bat-file
:: https://superuser.com/questions/813039/what-is-the-purpose-of-the-fonts-key-in-the-registry
:: Registery options and tips & tricks: https://ss64.com/nt/regedit.html

set path=%USERPROFILE%"\Downloads"

wget ^
-U "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" ^
-O %path%"\google-fonts.zip" "https://fonts.google.com/download?family=Roboto|Montserrat|Oswald|Poppins|Lato"

mkdir %path%\google-fonts

7z e -y -o %path%"\google-fonts" %path%"\google-fonts.zip"

:: for {
::     copy my-font.ttf %systemroot%\fonts
::     regedit /s font.reg
:: }

:: /s /q %path%\google-fonts.zip
:: rmdir /s /q C:\Users\Alexis\Downloads\google-fonts
