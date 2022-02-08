@Echo Off

set dia=%date:~0,2%
set /a dia=1%dia%-100
call:_calc add dia-01 var



echo:0%var%
echo %dia%
pause 1>nul & exit


:_calc
 setlocal enabledelayedexpansion
 if "%~1" EQU "add" set "sym=+"
 if "%~1" EQU "sub" set "sym=-"
 set "add_str=%~2"
 set "add_str=!add_str:%sym%= !"
 set/a hst=0,cnt=0,add=0
 for %%_ in (%add_str%) do (
 set/a dec[!cnt!]=0
 for /f "tokens=2 delims=." %%. in ("%%_") do (
  call :_strlen "%%."
  set/a dec[!cnt!]=!errorlevel!
  if !errorlevel! GTR !hst! set/a hst=!errorlevel!
 )
 set/a cnt+=1
 )
 set/a cnt=0
 if "%sym%" EQU "-" for %%_ in (%add_str:.=%) do (
 set/a pow=%hst%-%dec[0]%,n_b=%%_
 for /l %%. in (1,1,!pow!) do set "n_b=!n_b!0"
 set/a add+=!n_b!*2
 goto :__op
 )
:__op
for %%_ in (%add_str:.=%) do (
 call set/a pow=%hst%-%%dec[!cnt!]%%,n_b=%%_
 for /l %%. in (1,1,!pow!) do set "n_b=!n_b!0"
 set/a add%sym%=!n_b!,cnt+=1
)
set "res=!add:~0,-%hst%!.!add:~-%hst%!"
if %hst% EQU 0 set "res=%res:~1%"
endlocal & set "%~3=%res%" & exit /b
:_strlen
 setlocal
 set/a cnt=0
 for /f "tokens=* eol=" %%_ in (
  '"cmd /u /c echo:%~1|more"'
 ) do set/a cnt+=1
 endlocal & exit /b %cnt%








