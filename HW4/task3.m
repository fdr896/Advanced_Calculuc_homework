%% объявляем константы.
a = 20;
b = 21;
alpha = 10;
beta = 20;

%% строим матрицу и ищем её собственные числа.
A = [alpha, -a;
     -b, beta];
[V, D] = eig(A);

%% строим область и считаем производные.
[x, y] = meshgrid(linspace(0, 3));
dx = alpha*x - a*y;
dy = -b*x + beta*y;

figure(1);
%% строим изолинии.
streamslice(x, y, dx, dy);
xlabel('первая орда');
ylabel('вторая орда');
hold on;
%% строим собственный вектор.
line([0, -V(1, 1)], [0, -V(2, 1)], 'Color', 'red', 'LineWidth', 2)
