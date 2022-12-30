function [C]=ssp(H)
% Velocidad del sonido vs H. US Standard 1976.
% [C]=isossp(H) Entrega la velocidad del sonido en m/s en funcion de la
% altura geopotencial H[km]. Modelo valido para  0<H<864.0769 km.

R_gas = 8.31432e3; 
Mo = 28.9644; %[kg/mol]
gamma = 1.4;
T = TvsH(H);
C = (gamma*R_gas*T/Mo)^(1/2);