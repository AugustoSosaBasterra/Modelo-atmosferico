function [T]=TvsH(H)
% Temperatura vs H. US Standard 1976.
% [T]=TvsH(H) Entrega la temperatura en grados Kelvin en funcion de la
% altura geopotencial H[km]. Modelo valido para  0<H<864.0769 km.

L = [-6.5 0 1 2.8 0 -2.8 -2 0 12]; %Gradiente de temperaturas
h = [0 11 20 32 47 51 71 86 91 110 120];    %Alturas de referencia
Tc = 263.1905;
A = -76.3232;
a = -19.9429;
Tinf = 1000;
r0  = 6.356766e3; %[km]

%% Ecuaciones de temperatura vs H


Tm_aux = [288.15 216.65 216.65 228.65 270.65 270.65 214.65 186.8673 240 360];
if H < 84.852
    
     if H >= 0 && H < 11
          T = Tm_aux(1) + L(1)*(H-h(1)); 
     elseif H >= 11 && H < 20
          T = Tm_aux(2) + L(2)*(H-h(2));
     elseif H >= 20 && H < 32
          T = Tm_aux(3) + L(3)*(H-h(3));
     elseif H >= 32 && H < 47
          T = Tm_aux(4) + L(4)*(H-h(4));
     elseif H >= 47 && H < 51
          T = Tm_aux(5) + L(5)*(H-h(5));
     elseif H >= 51 && H < 71
          T = Tm_aux(6) + L(6)*(H-h(6));
     elseif H >= 71 && H < 84.852  
          T = Tm_aux(7) + L(7)*(H-h(7));
     end
 
elseif H >= 84.852  && H < 89.7157
      T = Tm_aux(8);
elseif H >= 89.7157  && H < 108.1289
    Z = geop2geom(H);
      T = Tc + A *(1-((Z-h(8))/a)^2)^(1/2);
elseif H >= 108.1289  && H < 117.7767
    Z = geop2geom(H);
      T = Tm_aux(9)+ L(9)*(Z-h(9)); 
elseif H >= 117.7767  && H < 864.0707
    Z = geop2geom(H);
    xi = (Z-h(10))*(r0+h(10))/(r0+Z);
    lambda = 0.01875;
      T = Tinf - (Tinf-Tm_aux(10))*exp(-lambda*xi);
end

end



