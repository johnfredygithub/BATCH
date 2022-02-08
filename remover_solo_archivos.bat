@echo off
title ELIMINAR SOLO ARCHIVOS NO CARPETAS
echo ----------------------------------------------------------------
echo ELIMINAR SOLO ARCHIVOS
echo ----------------------------------------------------------------
DIR
echo presiona un tecla para continuar
pause>nul
del /s /q /f C:\Users\PC_M4LW4R3\Desktop\BAT\file\DB_BK\*.*
pause>nul
exit