clear
close all
clc

Q(:, :,  1) = [8.60e+00, 9.47e+00; 2.90e+00, 1.36e+01];
Q(:, :,  2) = [4.50e+00, 3.43e+00; 1.16e+01, 5.04e+00];
Q(:, :,  3) = [2.67e+00, 1.01e+01; 1.97e+00, 2.10e+02];
Q(:, :,  4) = [6.18e+01, 1.12e+01; 1.71e+01, 1.26e+01];
Q(:, :,  5) = [1.44e-01, 3.34e+01; 2.95e+01, 2.60e+01];
Q(:, :,  6) = [8.09e+00, 1.54e+00; 1.77e+01, 1.30e+00];
Q(:, :,  7) = [3.79e+00, 2.18e+01; 6.37e+00, 7.12e+01];
Q(:, :,  8) = [3.08e+00, 3.20e+01; 2.27e+01, 3.06e+01];
Q(:, :,  9) = [4.44e+00, 1.54e+00; 9.38e+00, 3.01e+01];
Q(:, :, 10) = [1.55e+00, 1.86e+00; 2.39e+00, 1.80e+01];
Q(:, :, 11) = [2.81e+00, 2.20e+01; 3.85e+01, 6.46e+00];
Q(:, :, 12) = [3.38e+01, 9.02e+00; 4.97e-01, 1.60e+01];
Q(:, :, 13) = [1.96e+00, 1.36e+00; 5.67e-01, 4.60e+02];
Q(:, :, 14) = [5.87e+00, 1.16e+01; 3.16e+01, 1.11e+02];
Q(:, :, 15) = [5.90e-01, 1.77e+00; 5.98e-01, 2.43e-01];
Q(:, :, 16) = [2.14e-01, 2.82e+01; 8.47e+00, 2.03e+00];
Q(:, :, 17) = [7.22e+00, 5.33e+00; 7.15e-01, 1.97e+01];
Q(:, :, 18) = [1.09e+00, 1.89e+01; 4.90e+01, 2.87e+01];
Q(:, :, 19) = [1.94e+00, 4.35e+00; 3.91e+01, 6.87e+00];
Q(:, :, 20) = [3.51e+00, 1.12e+01; 1.18e+01, 4.77e+00];

r(:,  1) = [1.06e+00; 7.41e+00];
r(:,  2) = [3.27e+01; 1.24e+01];
r(:,  3) = [2.13e+00; 1.62e+01];
r(:,  4) = [1.79e+01; 3.34e+01];
r(:,  5) = [1.30e+00; 4.25e+02];
r(:,  6) = [7.45e-01; 1.32e+00];
r(:,  7) = [4.45e+01; 2.24e-02];
r(:,  8) = [1.83e+00; 6.96e+00];
r(:,  9) = [1.93e+00; 8.69e-01];
r(:, 10) = [6.17e-02; 1.13e+00];
r(:, 11) = [9.13e+00; 3.30e+01];
r(:, 12) = [1.61e-01; 9.82e+00];
r(:, 13) = [1.46e-01; 1.91e+01];
r(:, 14) = [7.99e+01; 9.39e+00];
r(:, 15) = [2.81e+00; 1.49e+00];
r(:, 16) = [1.61e+01; 8.97e-01];
r(:, 17) = [2.59e+00; 7.14e+00];
r(:, 18) = [7.55e+00; 3.14e+01];
r(:, 19) = [1.22e+01; 3.00e+00];
r(:, 20) = [1.30e+01; 3.77e+00];

b( 1) = 8.70e-01;
b( 2) = 1.91e+00;
b( 3) = 5.35e+00;
b( 4) = 2.05e+00;
b( 5) = 4.65e-01;
b( 6) = 6.27e-01;
b( 7) = 1.01e+00;
b( 8) = 7.36e-01;
b( 9) = 1.28e+01;
b(10) = 9.05e+00;
b(11) = 4.54e-01;
b(12) = 9.38e-01;
b(13) = 3.11e-01;
b(14) = 4.90e-01;
b(15) = 3.31e-01;
b(16) = 3.80e+01;
b(17) = 2.60e+00;
b(18) = 2.73e+00;
b(19) = 1.77e+00;
b(20) = 5.10e-01;

fun = @(w) w'*sum(Q, 3)*w + sum(r, 2)'*w + sum(b);
funXY = @(x, y) fun([x; y]);

rangeX = linspace(-4, 4, 300);
rangeY = linspace(-4, 4, 300);

[X, Y] = meshgrid(rangeX, rangeY);

Z = zeros(size(X));

for i = 1 : 1 : length(rangeX)
    for j = 1 : 1 : length(rangeY)
        Z(j, i) = funXY(rangeX(i), rangeY(j));
    end
end
    
contourf(X, Y, Z);
xlabel('x');
ylabel('y');
