function [P]=PvsH(H)
% Presion vs H
% [P]=PvsH(H) Entrega la presion en pascales en funcion de la altura
% geopotencial H[km]. Modelo valido para  0<H<84.8519 km.

L = [-6.5 0 1 2.8 0 -2.8 -2 0 12]; %Gradiente de temperaturas
h = [0 11 20 32 47 51 71 86 91 110 120];    %Alturas de referencia
R_gas = 8.31432; %[N*M/(kmol K)]
Tm_aux = [288.15 216.65 216.65 228.65 270.65 270.65 214.65 186.8673 240 360];
g01 = 9.80665;    %[m^s/(s^2*m')]
Mo = 28.9644; %[kg/mol]
Pb = [101325 22632.06433 5474.888  868.01857 110.90629  66.9388 3.9564 0.3733]; %[N/m^2]

if H >= 0 && H < 11
      P = Pb(1)*(Tm_aux(1)/(Tm_aux(1)+L(1)*(H-h(1))))^(g01*Mo/(R_gas*L(1)));    
 elseif H >= 11 && H < 20       
      P = Pb(2)*exp(-g01*Mo*(H-h(2))/(R_gas*Tm_aux(2)));
 elseif H >= 20 && H < 32
      P = Pb(3)*(Tm_aux(3)/(Tm_aux(3)+L(3)*(H-h(3))))^(g01*Mo/(R_gas*L(3)));
 elseif H >= 32 && H < 47
      P = Pb(4)*(Tm_aux(4)/(Tm_aux(4)+L(4)*(H-h(4))))^(g01*Mo/(R_gas*L(4)));   
 elseif H >= 47 && H < 51         
      P = Pb(5)*exp(-g01*Mo*(H-h(5))/(R_gas*Tm_aux(5)));
 elseif H >= 51 && H < 71
      P = Pb(6)*(Tm_aux(6)/(Tm_aux(6)+L(6)*(H-h(6))))^(g01*Mo/(R_gas*L(6)));
 elseif H >= 71 && H < 84.852  
      P = Pb(7)*(Tm_aux(7)/(Tm_aux(7)+L(7)*(H-h(7))))^(g01*Mo/(R_gas*L(7)));
 elseif H >= 84.852  
      P = 0.3733*(exp(1)^(-H/84.852 )*exp(1)); %ajuste de caida exponencial, no real.
end
end