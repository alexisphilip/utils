@echo off

:: TODO
:: set DOSKEYs for 'vps', 'chocoupgrade', etc
:: install new optimized terminal

echo ##############
echo WINDOWS SET UP
echo ##############
echo.
echo Sets up my Windows after a new install.
echo.
echo 1: PC setup
echo 2: Work setup (no Steam, Origins, Uplay...)
echo.
set /p choice="Choice: "

IF %choice%==1 (
    set setupType="pc"
) ELSE (
    IF %choice%==2 (
        set setupType="work"
    ) ELSE (
        rem /b is to end the script without closing cmd.exe if the current script was called from a script
        exit /b
    )
)

@echo on

:: Sets up chocolatey packages.
setup-choco.cmd
:: Sets up NPM packages.
setup-npm.cmd
:: Downloads fonts.
setup-fonts.cmd

set root="C:\"
set home=%USERPROFILE%
set work="C:\work"

mkdir %home%"\.ssh"
mkdir %work%"\3d"
mkdir %work%"\design"
mkdir %work%"\prog"

:: Creates SSH pub & private keys, known_hosts file and opens the pub key.
ssh-keygen -f %home%\.ssh\id_rsa -t rsa -N ""
copy /y NUL %home%"\.ssh\known_hosts" > NUL
notepad %home%"\.ssh\id_rsa.pub

:: Downloads my main repositories
cd %work%"\3d"
git clone git@github.com:alexisphilip/masplit.git
cd %work%"\design"
git clone git@github.com:alexisphilip/curriculum-vitae.git
git clone git@github.com:alexisphilip/curriculum-vitae-others.git
cd %work%"\prog"
git clone git@github.com:alexisphilip/alexisphilip.fr.git
git clone git@github.com:alexisphilip/lighty-colorpicker.git
git clone git@github.com:alexisphilip/linux-helpers.git
git clone git@github.com:alexisphilip/utils.git

:: Sets up DOSKEYs (aliases)
:: doskey vps=ssh root@alexisphilip.fr