bds = 3; %% граница области, на которой строим график.
%% задаём область, на которой строим.
x_space = linspace(-bds, bds, 100);
y_space = linspace(-bds, bds, 100);
[x, y] = meshgrid(x_space, y_space);

%% строим изолини первой функции.
vals_1 = f1(x, y);
figure(1);
contourf(x, y, vals_1, 'ShowText', 'on', 'LineWidth', 1.6);
title('Contour of $\frac{x^2y}{x^4 + y^2}$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
xlabel('x');
ylabel('y');

%% строим изолинии второй функции.
vals_2 = f2(x, y);
figure(2);
contourf(x, y, vals_2, 'ShowText', 'on', 'LineWidth', 1.6);
title('Contour of $\frac{\exp(-1/x^2)y}{\exp(-2/x^2) + y^2}$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16)
 xlabel('x');
 ylabel('y');
