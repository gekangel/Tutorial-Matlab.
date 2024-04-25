%Visualisasi

% %Plot
% x = [-10:1:10];
% f = x.^2;
% g = 5+2*x;
% plot(x,f,'g*',x,g,'r--')
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik fungsi x^2') 
% legend('f(x)','g(x)')
% grid on



% %Sub Plot
% x = [-100:1:100];
% f = x.^2;
% g = 2*x;

%subplot(2,1,1) %(baris,kolom,..)
% figure(1)%memunculkan di figur yg berbeda
% plot(x,f,'g*')
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik fungsi x^2') 
% % legend('f(x)','g(x)')
% 
% % subplot(2,1,2) %(baris,kolom,..)
% figure(2)%memunculkan di figur yg berbeda yaitu figure ke2
% plot(x,g,'r+')
% xlabel('sumbu x')
% ylabel('g(x)')
% title('Grafik fungsi 2*x') 
% % legend('f(x)','g(x)')
% 
% grid on

%contour plot
% x = linspace(-10*pi,2*pi);
% y = linspace(0,11*pi);
% [X,Y] = meshgrid(x,y);
% Z = sin(X)+cos(Y);
% contour(X,Y,Z)
% X = [-3:0.5:3];
% y = [-3:0.5:3];
% [X,Y]=meshgrid(-3:0.3:3);
% z = X.*exp(-X.^2-Y.^2);
% surfc(X,Y,z)
% mesh(X,Y,z)

%plot 3D
% t = linspace(-10,10,1000);
% xt = exp(-t./10).*sin(5*t);
% yt = exp(-t./10).*cos(5*t);
% p = plot3(xt,yt,t);

%plot contour 3D
% [X,Y] = meshgrid(-2:0.0125:2);
% Z = X.*exp(-X.^2-Y.^2);
% [M,c] = contour3(X,Y,Z,30);
% c.LineWidth = 3;

% Latihan Plot
% x = [0:0.1:1];
% y = (sin(5*pi*x)).^6;
% plot(x,y)
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik fungsi sin(5*Pi*x)).^6') 
% legend('f(x)')
% grid on

%Latihan lagi
% x = [0:0.001:1];
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot (x,y,'xr');
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik fungsi') 
% legend('f(x)')
% grid on

%Latihan 3
% x = [-10:0.2:10];
% y = [-10:0.2:10];
% [x,y]= meshgrid(x,y); 
% z = (x.^2+y-11).^2+(x+y.^2-7).^2;
% surfc(x, y,z);
% xlabel('x')
% ylabel('y')
% zlabel('f(x,y)')
% title('Grafik fungsi') 
% legend('f(x)')
% grid on

%Latihan 4
% x = [-4:0.1:4];
% y = [-4:0.1:4];
% [X,Y]= meshgrid(x,y); 
% Z = 1/2*(X.^4-16*X.^2+5*X)+1/2*(Y.^4-16*Y.^2+5*Y);
% figure(1)
% mesh(X, Y, Z);
% figure (2)
% surfc(X, Y, Z);
% figure
% xlabel('x')
% ylabel('y')
% zlabel('f(x,y)')
% title('Grafik fungsi Himmelblau') 
% colorbar

%Latihan 5
% x = -1.9:0.1:1.9;
% y = -1.1:0.1:1.1;
% [X, Y] = meshgrid(x, y);
% Z = (4 - 2.1*X.^2 + X.^4/3).*X.^2 + X.*Y + (4*Y.^2 - 4).*Y.^2;
% figure(1)
% surf(X, Y, Z);
% figure(2)
% surfc(X, Y, Z);
% figure(3)
% mesh (X, Y, Z);
% title('Grafik Fungsi');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');

% Latihan 6 
x = -10:0.2:10;
y = -10:0.2:10;
[X, Y] = meshgrid(x, y);
Z = sin(X).*exp((1-cos(Y)).^2) + cos(Y).*exp((1-cos(Y).^2))+(X-Y).^2;
figure(1)
surf(X, Y, Z);
figure(2)
surfc(X, Y, Z);
figure(3)
mesh (X, Y, Z);
title('Six Hump Camel Back Function');
xlabel('x');
ylabel('y');
zlabel('f(x,y)');