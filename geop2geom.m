function [Z] = geop2geom(H)
%  Coordenadas geopotenciales a geometricas
%  [Z] = geop2geom(H) donde H es la altitud geopotencial en km

r0  = 6.356766e3; %[km]
g0  = 9.80665;    %[m/s^2]
g01 = 9.80665;    %[m^s/(s^2*m')]

Z = (r0*H/((g0/g01)*r0-H)); %[km]
end