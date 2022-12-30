function [rho]=density(H)
% Densidad del aire vs H. US Standard 1976.
% [rho]=density(H) Entrega la densidad del aire en kg/m^3 en funcion de la
% altura geopotencial H[km]. Modelo valido para  0<H<84.8519 km. Los
% valores que excedan dicha altitud se deben a un ajuste de caida
% exponencial en la presion. 

R_gas = 8.31432e3; 
Mo = 28.9644; %[kg/mol]
P = PvsH(H); %[Pa]
T = TvsH(H);
rho = P*Mo/(R_gas*T);
end