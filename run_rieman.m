clc
clear

f = @(x)x.^2;
a = 0;
b =1;
n =100;

integral_value = riemann(f, a, b, n);

disp(['hasil integral',num2str(a),'hingga',num2str(b),'adalah',num2str(integral_value)]);