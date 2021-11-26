%Luis Adrian Carmona Villalobos
%A01748395
clear, clc

%Ax= b
x = [
1 0.4;
1 0.79;
1 1.22;
1 1.77;
1 2.18;
1 2.74;
1 3.3;
1 3.95;
1 4.62;
1 5.47;
1 6.19;
]



y = [
50;
100;
150;
200;
250;
300;
350;
400;
450;
500;
550;
]

b = x\y; %resuelve b1 y b0 y lo pone en b
b = b.'

b1 = b(2)
b0 = b(1)

xserie = x(:,2) % sacamos la columna de x para graficar
xserie
yCalc = b0 + b1*xserie % cakcula la ecuación de regression lineal
yCalc

scatter(xserie, y)
hold on
plot(xserie, yCalc)

xlabel('Estimated proxy size')
ylabel('Actual added and modified size')

xk = 531 % calculo para el valor de 531
yk = b0 + b1 * xk
xk
yk

# calculo de R^2
R2 = 1 - sum((y - yCalc).^2)/sum((y - mean(y)).^2)
R2

mytitle = ['Linear regression relation between x and y, R ' num2str(xk) ' ' num2str(yk) ' ' num2str(R2)]

title(mytitle)
grid on