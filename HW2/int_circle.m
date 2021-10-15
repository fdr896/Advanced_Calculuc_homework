function integral = int_circle(N, R)
    f = @(z) 1/(z-1/10) + 1/(z-2) + 1/z;
    
    x_up = linspace(-R, R, N);
    y_up = sqrt(R^2.-x_up.^2);
    z = x_up + 1i .* y_up;
    z(N+1)=z(1);
    
    integral = 0;
    for i = 1:N
        integral = integral + f(z(i)) * (z(i+1)-z(i));
    end
    integral = integral * 2;
end