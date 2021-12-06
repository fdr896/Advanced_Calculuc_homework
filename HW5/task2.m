C_1 = linspace(0.5, 10, 10); % значения констант

figure(1); % строим фазовый портрет первого дифф. уравнения
for i = 1:length(C_1)
    bound = (11 * C_1(i))^(1/22);
    x = linspace(-bound, bound);
    dx_1 = sqrt(C_1(i) - x.^22./11);
    dx_2 = -dx_1;
    plot(x, dx_1, 'r', x, dx_2, 'r'); hold on;
end
axis([-3 3 -4 4]);
grid on;
title("$C = \frac{(x')^2}{2} + \frac{x^{22}}{11}$", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16);

figure(2); % строим фазовый портрет второго дифф. уравнения
for i = 1:length(C_1)
    x = linspace(-3, 3);
    dx_1 = sqrt(C_1(i) + x.^22./11);
    dx_2 = -dx_1;
    plot(x, dx_1, 'b', x, dx_2, 'b'); hold on;
end
axis([-3 3 -3 3]);
grid on;
title("$C = \frac{(x')^2}{2} - \frac{x^{22}}{11}$", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
      'fontsize', 16);