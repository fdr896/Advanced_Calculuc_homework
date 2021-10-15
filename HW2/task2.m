Zhukovskie = @(z) (z+1./z)./2;

x = linspace(-10, 10);
y = -x;
z = x + 1i*y;
new_x = real(Zhukovskie(z));
new_y = imag(Zhukovskie(z));

figure(1);
plot(new_x, new_y); hold on;
title('$z \mapsto w = \frac{1}{2}\left(z + \frac{1}{z}\right)$, where $z = x - ix$', ...
      'Interpreter', 'latex', ...
      'fontweight', 'bold', ...
       'fontsize', 16)
xlabel('Re(w)');
ylabel('Im(w)');

z_min1 = 1/sqrt(2) - 1i * 1/sqrt(2);
z_min2 = -1/sqrt(2) + 1i * 1/sqrt(2);

imag1 = Zhukovskie(z_min1);
imag2 = Zhukovskie(z_min2);
plot(real(imag1), imag(imag1), 'r*');
plot(real(imag2), imag(imag2), 'r*');