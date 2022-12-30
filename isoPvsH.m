function [P]=isoPvsH(H)
% Presion vs H. ISO 2533.
% [P]=isoPvsH(H) Entrega la presion en pascales en funcion de la altura
% geopotencial H[km]. Modelo valido para  -2<H<80km.

B = [-6.5 -6.5 0 1 2.8 0 -2.8 -2]; %Gradiente de temperaturas
h = [-2 0 11 20 32 47 51 71];    %Alturas de referencia
R = 287.05287e-6;
Tb = [301.15 288.15 216.65 216.65 228.65 270.65 270.65 214.65 196.65];
gn = 9.80665e-3;    %[m^s/(s^2*m')]
M = 28.964420; %[kg/mol]
Pb = [127783 101325 22632.040 5474.88328  868.016705 110.905905  66.938839 3.956410 0.8862763]; %[N/m^2]

if H >= -2 && H < 0
      P = Pb(1)*(1+B(1)/Tb(1)*(H-h(1)))^(-gn/(B(1)*R));
 elseif H >= 0 && H < 11       
      P = Pb(2)*(1+B(2)/Tb(2)*(H-h(2)))^(-gn/(B(2)*R));
 elseif H >= 11 && H < 20       
      P = Pb(3)*exp(-gn/(R*Tb(3))*(H-h(3)));
 elseif H >= 20 && H < 32
      P = Pb(4)*(1+B(4)/Tb(4)*(H-h(4)))^(-gn/(B(4)*R));
 elseif H >= 32 && H < 47
      P = Pb(5)*(1+B(5)/Tb(5)*(H-h(5)))^(-gn/(B(5)*R));
 elseif H >= 47 && H < 51         
      P = Pb(6)*exp(-gn/(R*Tb(6))*(H-h(6)));
 elseif H >= 51 && H < 71
      P = Pb(7)*(1+B(7)/Tb(7)*(H-h(7)))^(-gn/(B(7)*R));
 elseif H >= 71 && H < 80
      P = Pb(8)*(1+B(8)/Tb(8)*(H-h(8)))^(-gn/(B(8)*R));
end
end