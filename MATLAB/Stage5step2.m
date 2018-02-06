function [a, movelist] = Stage5step2(a, movelist)

color = a(2,8);
i = 0;
j = 0;
flag = 0;
count = 0;
while (flag == 0)
    count = 0;
    for i = 1:3
        for j = 7:9
            if (a(i,j) == color)
                count = count + 1;
            end
        end
    end
    if (count == 9)
        flag = 1;
    elseif (count == 5)
        while (a(4,6) ~= color)
            a = U(a);
            movelist(length(movelist)+1) = 11;
        end
         [a, movelist] = Stage5movesStep2(a, movelist);
    elseif (count == 6)
        while (a(3,7) ~= color)
            a = U(a);
            movelist(length(movelist)+1) = 11;
        end
        [a, movelist] = Stage5movesStep2(a, movelist);
    elseif (count == 7 || count == 8)
        while (a(4,7) ~= color)
            a = U(a);
            movelist(length(movelist)+1) = 11;
        end
         [a, movelist] = Stage5movesStep2(a, movelist);

    end
end

