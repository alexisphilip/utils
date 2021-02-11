
rem https://stackoverflow.com/questions/12946384/windows-install-fonts-from-cmd-bat-file
rem https://superuser.com/questions/813039/what-is-the-purpose-of-the-fonts-key-in-the-registry
rem Registery options and tips & tricks: https://ss64.com/nt/regedit.html


wget -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0" -O "C:\Users\Alexis\Downloads\google-fonts.zip" "https://fonts.google.com/download?family=Roboto|Montserrat|Oswald|Poppins|Lato"
mkdir C:\Users\Alexis\Downloads\google-fonts
7z e -y -o"C:\Users\Alexis\Downloads\google-fonts" "C:\Users\Alexis\Downloads\google-fonts.zip"

rem for {
rem     copy my-font.ttf %systemroot%\fonts
rem     regedit /s font.reg
rem }

del /s /q C:\Users\Alexis\Downloads\google-fonts.zip
rem rmdir /s /q C:\Users\Alexis\Downloads\google-fonts