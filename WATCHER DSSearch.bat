@echo off
cls
echo Protecting the process from crashes...
title Process Watcher Search Server
:DSSearch-server
echo (%time%) Process started.
start /wait /affinity 4 DSSearch-server_64.exe 
echo (%time%) WARNING: Process closed or crashed, restarting.
goto DSSearch-server