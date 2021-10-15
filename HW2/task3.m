I = int_par(1000000);
I_quad = int_quad(1000000);

iterations = 3000;
errors_par = zeros(iterations);
errors_quad = zeros(iterations);
errors_between_line_and_parabola = zeros(iterations);
for i = 100:iterations
    errors_par(i) = abs(I - int_par(i));
    errors_quad(i) = abs(I_quad - int_quad(i));
    errors_between_line_and_parabola(i) = abs(int_line(i) - int_par(i));
end
for i = 1:100
    errors_between_line_and_parabola(i) = abs(int_line(i) - int_par(i));
end

figure(1);
plot(1:iterations, errors_par);
title('Dependence of the error on the number of points in the partition', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
xlabel('N = number of points in partition');
ylabel('Absolute error');

figure(2);
plot(1:iterations, errors_quad);
title('Dependence of the error on the number of points in the partition', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 13)
xlabel('N = number of points in partition');
ylabel('Absolute error');

figure(3);
plot(1:iterations, errors_between_line_and_parabola);
title('Difference between integral value on line y = x and parabola y = x^2', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 13)
xlabel('N = number of points in partition');
ylabel('Absolute error');