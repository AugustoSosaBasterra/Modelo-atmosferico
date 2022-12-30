function [T,P,rho,C]=atm(H)
% US Standard 1976.
% Entre temperatura [K], presion [Pa], densidad [kg/m^3] y velocidad del
% sonido [m/s] en funcion de la altura geopotencial H[km]. Modelo valido
% para 0<H<84.8519 km. Mas alla de esa altitud, los valores de densidad y
% presion se deben a un ajuste exponencial no real. 
T = TvsH(H);
P = PvsH(H);
C = ssp(H);
rho = density(H);

end