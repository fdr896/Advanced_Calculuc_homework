p = [1 20i -1 1];
disp(roots(p));

a_space = linspace(-1, 1, 1000);
b_space = linspace(-21.5, 20, 1000);
[a, b] = meshgrid(a_space, b_space);

re = a.^3-3.*a.*b.^2-40.*a.*b-a+1;
figure(1);
contourf(a, b, re, 'ShowText', 'on', 'LineWidth', 1.6);
title('Countor of $f(a, b) = a^3-3ab^2-40ab-a+1$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)

im = -b.^3+3.*a.^2*b+20.*a.^2-20.*b.^2-b;
figure(2);
contourf(a, b, im, 'ShowText', 'on', 'LineWidth', 1.6);
title('Countor of $f(a, b) = -b^3+3a^2b+20a^2-20b^2-b$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
