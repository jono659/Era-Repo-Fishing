@echo off
cls
echo Protecting the process from crashes...
title WATCHER DSGame-server_64town
:DSGame-server
echo (%time%) Process started.
start /wait /affinity 2 DSGame-server_64town.exe --ip 8.26.94.111 --port 54237
echo (%time%) WARNING: Process closed or crashed, restarting.
goto DSGame-server