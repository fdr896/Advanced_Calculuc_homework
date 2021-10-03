t = linspace(-1, 3, 10000);
f = @(t) t.^5-t.^4-20.*t.^2+19.*t;

figure(1);
plot(t, f(t));
xlabel('t');
ylabel('f(t)');
grid on;
grid minor;

legend({'$f(t) = t^5-t^4-20t^2+19t$'}, ...
       'Location', 'southwest', ...
       'Interpreter', 'latex', ...
       'fontsize', 14)
