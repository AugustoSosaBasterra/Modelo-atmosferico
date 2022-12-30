function [a]=isossp(H)
% Velocidad del sonido vs H. ISO 2533.
% [C]=isossp(H) Entrega la velocidad del sonido en m/s en funcion de la
% altura geopotencial H[km]. Modelo valido para  -2<H<80 km.


T = TvsH(H);
a = 20.046796*sqrt(T);
end