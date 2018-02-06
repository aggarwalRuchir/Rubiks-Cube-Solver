function [a, movelist] = Stage5step1(a, movelist)

color = a(2,8);
flag = 0;
while (flag == 0)
    if (a(1,8) == color && a(2,9) == color && a(3,8) == color && a(2,7) == color)
        flag = 1;
    elseif (a(2,7) == color && a(2,9) == color)
        [a, movelist] = stage5movesStep1State4(a, movelist);
    elseif (a(1,8) == color && a(3,8) == color)
        a = U(a);
        movelist(length(movelist)+1) = 11;
        [a, movelist] = stage5movesStep1State4(a, movelist);
    elseif (a(1,8) == color && a(2,7) == color)
        [a, movelist] = stage5movesStep1State2and3(a, movelist);
    elseif (a(1,8) == color && a(2,9) == color)
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        [a, movelist] = stage5movesStep1State2and3(a, movelist);
    elseif (a(2,9) == color && a(3,8) == color)
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        [a, movelist] = stage5movesStep1State2and3(a, movelist);
    elseif (a(3,8) == color && a(2,7) == color)
        a = U(a);
        movelist(length(movelist)+1) = 11;
        [a, movelist] = stage5movesStep1State2and3(a, movelist);
    else
        [a, movelist] = stage5movesStep1State2and3(a, movelist);
    end
end


end

