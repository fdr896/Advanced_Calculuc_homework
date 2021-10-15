function integral = int_par(N)
    P = @(z) z.^3 + (1i) * z^.2 - 20 * z + 1;
    
    x = linspace(0, 1, N);
    z = x+1i.*x.^2;
    z(N+1)=z(1);
    
    integral = 0;
    for i = 1:N
        integral = integral + P(z(i)) * (z(i+1)-z(i));
    end
end