function [T]=isoTvsH(H)
% Temperatura vs H. ISO 2533.
% [T]=isoTvsH(H) Entrega la temperatura en grados Kelvin en funcion de la
% altura geopotencial H[km]. Modelo valido para  -2<H<80km.

B = [-6.5 -6.5 0 1 2.8 0 -2.8 -2]; %Gradiente de temperaturas
h = [-2 0 11 20 32 47 51 71];    %Alturas de referencia


%% Ecuaciones de temperatura vs H


Tm_aux = [301.15 288.15 216.65 216.65 228.65 270.65 270.65 214.65 186.8673 240 360];

      if    H >= -2 && H < 0
          T = Tm_aux(1) + B(1)*(H-h(1)); 
     elseif H >= 0 && H < 11
          T = Tm_aux(2) + B(2)*(H-h(2)); 
     elseif H >= 11 && H < 20
          T = Tm_aux(3) + B(3)*(H-h(3));
     elseif H >= 20 && H < 32
          T = Tm_aux(4) + B(4)*(H-h(4));
     elseif H >= 32 && H < 47
          T = Tm_aux(5) + B(5)*(H-h(5));
     elseif H >= 47 && H < 51
          T = Tm_aux(6) + B(6)*(H-h(6));
     elseif H >= 51 && H < 71
          T = Tm_aux(7) + B(7)*(H-h(7));
     elseif H >= 71 && H < 80
          T = Tm_aux(8) + B(8)*(H-h(8));
     end
end