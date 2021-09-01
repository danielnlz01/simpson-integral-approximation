%Actividad 4.3
%Integración numérica por la regla de Simpson

clc;
clear;

%Integral 1
%
%1
%I exp (x^2) dx
%0

a = 0;
b = 1;
n = 10;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = exp (x(i)^2); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = exp(x^2); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 1---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 2
%
%2
%I sqrt(1+x^2) dx
%0

a = 0;
b = 2;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = sqrt(1+x(i)^2); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = sqrt(1+x^2); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 2---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 3
%
%4
%I (1/x) dx
%1

a = 1;
b = 4;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (1/x(i)); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (1/x); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 3---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 4
%
%7
%I (x+7) dx
%1

a = 1;
b = 7;
n = 6;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (x(i)+7); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (x+7); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 4---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 5
%
%2
%I (x+4) dx
%-2

a = -2;
b = 2;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (x(i)+4); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (x+4); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 5---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 5
%
%2
%I (x+4) dx
%-2

a = -2;
b = 2;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (x(i)+4); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (x+4); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 5---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 6
%
%2
%I (x^3) dx
%0

a = 0;
b = 2;
n = 8;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (x(i)^3); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (x^3); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 6---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 7
%
%1
%I (sin(x)^2) dx
%0

a = 0;
b = 1;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (sin(x(i))^2); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (sin(x)^2); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 7---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);

%%Integral 8
%
%7
%I (2/x) dx
%2

a = 2;
b = 7;
n = 4;

delta = (b-a)/n;
x = zeros (1,n+1);
f = zeros (1,n+1);

for i = 1:1:n+1
    x(i)= a + (i-1) * (delta);
    f(i) = (2/x(i)); %Definición de la ecuación
end

suma_par = 0;

for i=2:2:n
    suma_par = suma_par + 4*f(i);
end

suma_imp = 0;

for i = 3:2:n
    suma_imp = suma_imp + 2*f(i);
end

area = (delta/3)*(f(1) + suma_par + suma_imp + f(n+1));

%Cálculo de la integral por MatLab
syms x;
ec = (2/x); %Definición de la ecuación
int_ec = int(ec, x, a, b); %Calculando la integral
eval_int_ec = eval(int_ec); %Evaluando la integral

error_por = abs(double(( eval_int_ec - area)/eval_int_ec*100));

disp ("---------------------------------SOLUCIÓN DE LA INTEGRAL 8---------------------------------------")

disp ("El valor aproximado es de: " + area);
disp ("Usando un total de n= " + n);
disp ("Con un porcentaje de error de: " + error_por + "%");
disp ("Respecto al valor exacto de la integral de: " + eval_int_ec);


