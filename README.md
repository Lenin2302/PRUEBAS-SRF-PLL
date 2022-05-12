# PRUEBAS-SRF-PLL
Archivos de Matlab y Simulink empleados en trabajo de grado "Control de fase para sincronizacion de inversores fuente de voltaje"
 %% Determinación de parámetros del Controlador
 %% Prueba 1
 Mp=0.2;
 Ts=0.001;
 kp=8/Ts
 e=-log(Mp)/sqrt(pi^2+(log(Mp))^2)
 Ti=4*e^2/kp
 Gol=tf([kp kp/Ti],[1 0 0])
 Gcl=feedback(Gol,1)
 stepinfo(Gcl)
 step(Gcl)

 %% Prueba 2
 kp=10000; Ti=2e-04;
 Gol=tf([kp kp/Ti],[1 0 0])
 Gcl=feedback(Gol,1)
 stepinfo(Gcl)
 step(Gcl)

 %% Prueba 3 
 kp=12000; Ti=2e-04; 
 Gol=tf([kp kp/Ti],[1 0 0]) 
 Gcl=feedback(Gol,1) 
 stepinfo(Gcl) 
 step(Gcl) 

 %% Prueba 4
 kp=12000; Ti=2.5e-04;
 Gol=tf([kp kp/Ti],[1 0 0])
 Gcl=feedback(Gol,1)
 stepinfo(Gcl)
 step(Gcl)

%%  Prueba 5
 kp=9200; Ti=0.00027;
 Gol=tf([kp kp/Ti],[1 0 0])
 Gcl=feedback(Gol,1)
 stepinfo(Gcl)
 step(Gcl)
