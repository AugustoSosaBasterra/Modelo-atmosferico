function [rho]=isodensity(H)
% Densidad del aire vs H. ISO 2533.
% [rho]=isodensity(H) Entrega la densidad del aire en kg/m^3 en funcion de la
% altura geopotencial H[km]. Modelo valido para  -2<H<80 km. Los
% valores que excedan dicha altitud se deben a un ajuste de caida
% exponencial en la presion. 

R = 287.05287;
P = isoPvsH(H); %[Pa]
T = isoTvsH(H);
rho = P/(R*T);
end