R = [0.1 1 10];
I = zeros(3, 1);
for i = 1:3
    I(i, 1) = int_circle(10000, R(i));
end

iterations = 10000;
errors = zeros(3, iterations);
for N = 1000:iterations
    for r = 1:3
        errors(r, i) = abs(I(r, 1) - int_circle(N, R(i)));
    end
end

figure(1);
plot(1:iterations, errors(1,:));
title("Dependence of the error on the number of points in the partition for R = 0.1", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 14)
xlabel('N = number of points in partition');
ylabel('Absolute error');
figure(2);
plot(1:iterations, errors(2,:));
title("Dependence of the error on the number of points in the partition for R = 1", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 14)
xlabel('N = number of points in partition');
ylabel('Absolute error');
figure(3);
plot(1:iterations, errors(3,:));
title("Dependence of the error on the number of points in the partition for R = 10", ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 14)
xlabel('N = number of points in partition');
ylabel('Absolute error');