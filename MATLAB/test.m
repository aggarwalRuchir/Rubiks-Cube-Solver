rubiks;
c = 0;
old = a;
while (c < 10)
    c = c + 1;
    if(randi(2) - 1 == 1)
        a = U(a);
    end
    if(randi(2) - 1 == 1)
        a = F(a);
    end
    if(randi(2) - 1 == 1)
        a = R(a);
    end
    if(randi(2) - 1 == 1)
        a = L(a);
    end
    if(randi(2) - 1 == 1)
        a = D(a);
    end
    if(randi(2) - 1 == 1)
        a = B(a);
    end
    if(randi(2) - 1 == 1)
        a = VU(a);
    end
    if(randi(2) - 1 == 1)
        a = HR(a);
    end
    fprintf('Beginning');
    a
    movelist = [];
    Solve(a, movelist)
    
end
rubiks;