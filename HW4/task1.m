eps = 1; %% > 0, чтобы вращение было по часовой стрелке.
R_in = sqrt(20/pi); %% радиус внутренней окружности.
R_out = sqrt(41/pi); %% радиус внешней окружности.

[x, y] = meshgrid(linspace(-5, 5)); % область, на котором строим.
r = sqrt(x.^2 + y.^2);
phi = linspace(0, 2*pi);
dx = y + eps * x.*(R_in - r).*(R_out - r); % задаём дифф. уравнение как на семинаре.
dy = -x + eps * y.*(R_in - r).*(R_out - r); % задаём дифф. уравнение как на семинаре.

figure(1);
%% построим фазовый портрет.
streamslice(x, y, dx, dy)
xlabel('x');
ylabel('y');
hold on; %% построим сами окружности.
plot(R_in*cos(phi), R_in*sin(phi), '-r', 'LineWidth', 1.5);
plot(R_out*cos(phi), R_out*sin(phi), '-g', 'LineWidth', 1.5);
hold off;

