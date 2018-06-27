@echo off
cls
title Loco's Login Restarter
:DSConnect-Restarter
taskkill /f /im "DSConnect-server_64.exe" >nul
timeout /t 10 > null
tasklist /fi "IMAGENAME eq DSConnect-server_64.exe" | find /I /N "DSConnect-server_64.exe" || start /affinity 4 "DSConnect-server_64.exe"
echo (%time%) Login Server Restarted.
timeout /t 7200 > null
goto DSConnect-Restarter