clc
clear

%aljabar
%cara 1 , akar persamaa
% syms x 
% y = 2*x +12*x + 6 == 0;
% solusi = solve(y,x)

%cara 2
% roots([2, 12, 6])

%kuadrat
% syms x
% y = x^2 - 3*x - 28 == 0;
% solve(y,x)

%diskriminan
% a = input('nilai a = ');
% b = input('nilai b = ');
% c = input('nilai c = ');
% d = b^2-4*a*c;
% if d>0
%     x1 = (-b+sqrt(d))/(2*a);
%     x2 = (-b-sqrt(d))/(2*a);
%     disp(['solusi tunggal x1 = ',num2str(x1)]);
%     disp(['solusi tunggal x2 = ',num2str(x2)]);
% elseif d == 0
%     x = -b/(2*a);
%     disp(['solusi tunggal x=',num2str(x)]);
% else 
%     disp('tidak ada solusi')
% end

%Sistem Persamaan Linear 
% 5x + 9y = 5
% 3x - 6y = 4
%Ax = b -> x=A/b
% A = [5 9 ; 3 -6];
% b = [ 5 4];
% x1 = A/b;
% B = inv(A);
% x2 = b*B;
% disp(x1);
% disp(x2);


%metode jacobi -> numerik 
function [x,iter]= jacobi(A,b,x0,tol,max_iter);
n = length(b);
x = x0;
iter = 0;
error = inf; 

%input:
%A = Matriks koefisien
%b = Matriks hasil
%x0 = nilai awal = 0
% tol = batas toleransi
% max_iter = maximum iterasi

% output
% nilai x
% iterasi


while error > tol && iter < max_iter
    x_old = x;
    for i = 1:n
        sigma = 0;
        for j = 1:n
           if j ~= i
            sigma = sigma + A(i,j)*x_old(j);
        end
    end 
    x(i) = (b(i)-sigma)/A(i,i);
end
error = norm(x-x_old);
iter = iter+1;
end

if iter ==maxiter &&error>tol
    disp('iterasi maksimum tercapai')
else
    disp(['hasil metode jacobi berakhit di', num2str(iter),'iterasi.']);
        
end