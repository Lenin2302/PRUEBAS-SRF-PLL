%% TRABAJO DE GRADO: Dise?o de un PLL
%Nombre: Lenin Orozco
%Febrero del 2022
%% Determinaci?n de par?metros del Controlador
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

%% Prueba 5
kp=9200; Ti=0.00027;
Gol=tf([kp kp/Ti],[1 0 0])
Gcl=feedback(Gol,1)
stepinfo(Gcl)
step(Gcl)

%% An?lisis del Sistema
% Nombre: Lenin Orozco
% Febrero del 2022

%% Estabilidad
% Con los par?metros establecidos en el control, se procede al an?lisis de
% desempe?o del lazo de control.

kp=9200; Ti=0.00027;
Gol=tf([kp kp/Ti],[1 0 0])
Gcl=feedback(Gol,1)
stepinfo(Gcl)
step(Gcl)
pole(Gcl)
zero(Gcl)
pzmap(Gcl) %An?lisis de polos y ceros
bode (Gcl) % Verificamos estabilidad del sistema con diagrama de bode

%% Sensibilidad y Sensibilidad Complementaria
% Se realiza una primera prueba para analizar con los valores propios que
% se le dieron al controlador
Mp=0.2;
Ts=0.001;
kp=8/Ts;
e=-log(Mp)/sqrt(pi^2+(log(Mp))^2);
Ti=4*e^2/kp;
Gvco=tf([1],[1 0]); % Funci?n de Transferencia de la Planta
Gc=kp*tf([Ti,1],[Ti,0]); %Funci?n de Transferencia del Controlador
Gol=Gc*Gvco; % Funci?n de Transferencia de Lazxo Abierto
sens=(1/(1+Gol)); %Sensibilidad
Ms=max(bode(sens));

% Sensibilidad Complementaria
sensC=(Gol/(1+Gol));
Mt=max(bode(sensC))

% Segunda prueba: valores propios del controlador
kp=9200; Ti=0.00027;
Gc=kp*tf([Ti,1],[Ti,0]);
Gvco=tf([1],[1 0]);
Gol=Gc*Gvco;
sens=(1/(1+Gol))
Ms=max(bode(sens))
bode(sens) % se puede verificar los resultados con el diagram de bode

sensC=(Gol/(1+Gol))
Mt=max(bode(sensC))
bode(sensC)
