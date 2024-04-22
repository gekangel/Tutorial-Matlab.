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

%Sub Plot
x = [-100:1:100];
f = x.^2;
g = 2*x;

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
[X,Y]=meshgrid(-3:0.3:3);
z = X.*exp(-X.^2-Y.^2);
% surfc(X,Y,z)
mesh(X,Y,z)
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