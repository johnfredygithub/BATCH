@Echo off
       
REM Lo primero que se debe hacer para sumar o restar es crear una o más variables
REM que guarden resultados o los dígitos a evaluar.
REM El comando Set tiene permitido guardar y evaluar números enteros, hexadecimales y octales.
       
Set numero_entero_1=028
Set numero_entero_2=896
       
REM Ahora necesitamos un comando que evalue y los sume.
REM En este mismo comando "Set" tenemos un modificador ("/A") que nos permite hacer eso.
REM Usaremos "Set /A" para realizar la evaluacón, pero la guardaremos en otra variable.
       
Set /A suma=%numero_entero_1% + %numero_entero_2%
Set /A resta=%numero_entero_1% - %numero_entero_2%
       
REM Ya tenemos la suma y resta de 128 y 896, pero necesitamos un comando que los saque por pantalla.
REM Aquí entra "Echo" y "Pause". Este último es para que la consola no se cierre luego de completar la acción.
       
Echo La suma de %numero_entero_1% y %numero_entero_2% es : %suma%
Echo. (Lo que hace "echo" aquí es un salto de línea, y solo poniendo un punto delante del comando lo hace)
Echo La resta de %numero_entero_1% y %numero_entero_2% es: %resta%
Pause