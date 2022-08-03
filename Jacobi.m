function[sol, numIter] = Jacobi(A, b, x0, tol, maxIter)

D = diag(diag(A));
R = A-D;

for nit = 1:maxIter

    x = D\(b-R*x0); % Iteration formula
    err = norm(x-x0, "inf")/norm(x, "inf"); % Relative error calculation

    if err < tol
        numIter = nit;
        sol = x;
        return

    end

    x0 = x;

end
numIter = nit;
sol = x;
