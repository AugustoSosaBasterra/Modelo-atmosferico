function [H] = geom2geop(Z)
%  Coordenadas geometricas a geopotenciales
%  [H] = geom2geop(Z) donde Z es la altitud geometrica en km

r0  = 6.356766e3; %[km]
g0  = 9.80665;    %[m/s^2]
g01 = 9.80665;    %[m^s/(s^2*m')]

H = (g0/g01)*(r0*Z/(r0+Z)); %[km]
end