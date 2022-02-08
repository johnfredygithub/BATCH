
@echo off



call :_calc add|sub "operación" "variable"
echo %variable%


echo ingrese primer numero
set  /p "a="
echo ingrese segundo numero
set /p "b="
call :_calc sub "%a%-%b%" "adt"
echo. Resultado de la resta: %adt%
pause > nul
exit