bds = 6;
x_space = linspace(-bds, bds, 10);
y_space = linspace(-bds, bds, 10);
[x, y] = meshgrid(x_space, y_space);

z = x + 1i*y;

P = z.^3 + (1i) .* z.^2 - 20 .* z + 1;

Mod = 1./abs(P);
Arg = -angle(P);

 figure(1);
 contourf(x, y, Mod, 'ShowText', 'on', 'LineWidth', 1.6);
 title('Contour of $\left|\frac{1}{P(z)}\right|$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
xlabel('x');
ylabel('y');
 
figure(2);
contourf(x, y, Arg, 'ShowText', 'on', 'LineWidth', 1.6);
title('Contour of Arg$\left[\frac{1}{P(z)}\right]$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16)
 xlabel('x');
 ylabel('y');
