clc; clear variables

for i=1:1:80
T(i)= isoTvsH(i-1);
end
i = 0:1:79;
subplot(2,2,1)
plot(T,i)
xlabel('Temperatura[K]')
ylabel('Altitud geopotencial[H]')

for i=1:1:80
P(i)= isoPvsH(i-1);
end
i = 0:1:79;
subplot(2,2,2)
plot(P,i)
xlabel('Presion [Pa]')
ylabel('Altitud geopotencial[H]')


for i=1:1:80
rho(i)= isodensity(i-1);
end
i = 0:1:79;
subplot(2,2,3)
plot(rho,i)
xlabel('Densidad[kg/m^3]')
ylabel('Altitud geopotencial[H]')


for i=1:1:80
a(i)= isossp(i-1);
end
i = 0:1:79;
subplot(2,2,4)
plot(a,i)
xlabel('Velocidad del sonido[m/s]')
ylabel('Altitud geopotencial[H]')