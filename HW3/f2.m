function vals_2 = f2(x, y)
   len_x = length(x);
   len_y = length(y);
   vals_2 = zeros(len_x, len_y);
   %% создаём массив со значениями функции.
   
   %% итерируемся по всем переданным точкам.
   %% если это не точка (0, y),
   %% то считаем значение функции по определению,
   %% иначе значение равно нулю.
   for i = 1:len_x
       for j = 1: len_y
           curr_x = x(i, j);
           curr_y = y(i, j);
           if curr_x == 0
               continue;
           end
           vals_2(i, j) = (exp(-1/curr_x^2) * curr_y) / (exp(-2/curr_x)^2 + curr_y^2);
       end
   end
end