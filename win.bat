@echo off


:: Install Chocolatey
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


:: Reload PATH
"%ALLUSERSPROFILE%\chocolatey\bin\RefreshEnv.cmd"


:: Install Apprications with Chocolatey

:: Drivers
choco install -y ^
  directx ^
  geforce-game-ready-driver ^
  geforce-experience ^
  logitechgaming ^

:: Utilities
choco install -y ^
  7zip.install ^
  autohotkey.install ^
  ccleaner ^
  sharex ^
  openhardwaremonitor ^
  cpu-z.install ^

:: Browsers
choco install -y ^
  googlechrome ^
  firefox ^
  firefox-dev --pre ^

:: Development Tools
choco install -y ^
  git.install ^
  nodejs.install ^
  vscode ^
  hyper ^
  charles4 ^
  postman ^
  REM unity ^

:: Media
choco install -y ^
  mpc-hc ^
  gimp ^
  imagemagick.app ^

:: Programing Languages
choco install -y ^
  python3 ^
  ruby ^
  golang.install ^

:: Games Launcher
choco install -y ^
  steam ^
  origin ^
  uplay ^
  REM  battle.net ^
  epicgameslauncher ^

:: Games
choco install -y ^
  REM leagueoflegends ^
  osu ^
  minecraft ^

:: Social
choco install -y ^
  discord.install ^


:: Show Install Error


find "ERROR" "%ALLUSERSPROFILE%\chocolatey\logs\chocolatey.log"