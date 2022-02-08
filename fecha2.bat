@echo off
title myfirstprogram.
echo ----------------------------------------------------------------
echo hola mundo
echo ----------------------------------------------------------------

set año=%date:~-4%
set mes=%date:~3,2%
set /a dia=%date:~0,2%
set /a numero2=1
set /a resta= %dia% - %numero2%
echo %año%__%mes%_%resta%
pause
exit


pause>nul
exit