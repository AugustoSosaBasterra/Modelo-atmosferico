clc; clear variables

for i=1:1:85
T(i)= TvsH(i-1);
end
i = 0:1:84;
subplot(2,2,1)
plot(T,i)
xlabel('Temperatura[K]')
ylabel('Altitud geopotencial[H]')

for i=1:1:85
P(i)= PvsH(i-1);
end
i = 0:1:84;
subplot(2,2,2)
plot(P,i)
xlabel('Presion [Pa]')
ylabel('Altitud geopotencial[H]')


for i=1:1:85
rho(i)= density(i-1);
end
i = 0:1:84;
subplot(2,2,3)
plot(rho,i)
xlabel('Densidad[kg/m^3]')
ylabel('Altitud geopotencial[H]')


for i=1:1:85
C(i)= ssp(i-1);
end
i = 0:1:84;
subplot(2,2,4)
plot(C,i)
xlabel('Velocidad del sonido[m/s]')
ylabel('Altitud geopotencial[H]')


