%BELAJAR INTEGRAL RIEMANN

function riemann_integral = riemann(f, a, b, n)
    %f = fungsi
    %a = batas bawah 
    %b = batas atas
    %n = jumlah partisi

    %Lebar Partisi
    delta_x = (b - a) / n;
    %Inisialisasi variabel untuk jumlah rieman
    riemann_sum = 0; 

    %Mengevaluasi fungsi pada setiap titik dalam setiap partisi
    for i = 1:n
%     x_i = a * delta_x; %riemann kiri
    x_1 = a + (i-0.5)*delta_x; %riemann tengah
%   x_i = (a+delta_x)*delta_x; %riemann tengah
  
  riemann_sum = riemann_sum + f(x_i) * delta_x; %menambahkan kontribusi riemann
    end 
 riemann_integral = riemann_sum;
end 