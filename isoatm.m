function [T,P,rho,a]=isoatm(H)
% ISO 2533.
% Entre temperatura [K], presion [Pa], densidad [kg/m^3] y velocidad del
% sonido [m/s] en funcion de la altura geopotencial H[km]. Modelo valido
% para -2<H<80 km. Mas alla de esa altitud, los valores de densidad y
% presion se deben a un ajuste exponencial no real. 
T = isoTvsH(H);
P = isoPvsH(H);
a = isossp(H);
rho = isodensity(H);

end