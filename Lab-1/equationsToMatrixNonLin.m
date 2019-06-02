function [A,b] = equationsToMatrixNonLin( eq, x )
    %FACTORMAT equationsToMatrix for nonlinear equations
    %   factors out the vector x from eq such that eq = Ax + b
    %   eq does not need to be linear in x
    %   eq must be a vector of equations, and x must be a vector of symbols
    assert(isa(eq,'sym'), 'Equations must be symbolic')
    assert(isa(x,'sym'), 'Vector x must be symbolic')
    n = numel(eq);
    m = numel(x);
    A = repmat(sym(0),n,m);
    for i = 1:n % loop through equations
        [c,p] = coeffs(eq(i),x); % coefficients, powers of x(1)...x(n)
        for j = 1:m % loop through x(1)...x(n)
            for k = 1:numel(p) % loop through found powers/coefficients
                if has(p(k),x(j)) % if power has the j'th variable
                    A(i,j) = A(i,j) + p(k)*c(k)/x(j); % add the coefficient
                end
            end
        end
    end
    b = simplify(eq - A*x,'ignoreanalyticconstraints',true);
    end