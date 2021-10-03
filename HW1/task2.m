x = linspace(-2, 2, 1000);
f1 = 20 + sqrt(1-x.^2);
f2 = 20 - sqrt(1-x.^2);
ineq = f2 < f1;

figure(1);
plot(x, f1); hold on;
plot(x, f2);
patch([x(ineq) fliplr(x(ineq))], [f1(ineq) fliplr(f2(ineq))], 'r'); hold off;
grid on;
axis('equal');
