tol = 1e-05;
maxIter = 100;
A = [2.4 -0.8 -0.7; 0.5 1.5 0.7; -0.1 0.8 2.1];
b = [0.9; 2.7; 2.8];
x0 = [0.9; 0.9; 0.9];

[sol, numIter]=Jacobi(A, b, x0, tol, maxIter);
sol
numIter
