@echo off
curl -k https://raw.githubusercontent.com/NutStarlight/Realview_Unlock/main/Realview_Unlock_Script.ps1>>TempScript.ps1
SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath="%ThisScriptsDirectory%TempScript.ps1"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs}";
echo:
echo ---------- Successful ---------- 
timeout 3
del %PowerShellScriptPath%
