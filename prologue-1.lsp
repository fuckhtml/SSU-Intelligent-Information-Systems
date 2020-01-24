mul(X, Y, Z) :- Z is X * Y.
yn(N, Y) :-
    findall(U, (between(1,N,I), 
        findall(V, (between(1,N,J), 
            V is I + 1/J), LJ), 
        foldl(mul, LJ, 1, U)), LI),
    foldl(mul, LI, 1, Y).
