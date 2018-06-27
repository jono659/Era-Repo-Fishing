@echo off
cls
echo Protecting the process from crashes...
title Process Watcher Connect Server
:DSConnect-server
echo (%time%) Process started.
start /wait /affinity 4 DSConnect-server_64.exe
echo (%time%) WARNING: Process closed or crashed, restarting.
goto DSConnect-server