A = [0 0 20 1 1; ...
     1 0 0 0 0; ...
     0 1 0 0 0; ...
     0 0 1 0 0; ...
     0 0 0 1 1];
[V, D] = eig(A);
disp(V(:,3:3));