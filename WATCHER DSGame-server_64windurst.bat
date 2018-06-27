@echo off
cls
echo Protecting the process from crashes...
title WATCHER DSGame-server_64windurst
:DSGame-server
echo (%time%) Process started.
start /wait /affinity 2 DSGame-server_64windurst.exe --ip 8.26.94.111 --port 54297
echo (%time%) WARNING: Process closed or crashed, restarting.
goto DSGame-server