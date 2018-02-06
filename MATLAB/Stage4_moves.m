function [a, movelist, flag] = Stage4_moves(a, movelist)


%FRONT FACE MOVES
%Right side
flag = 0;
i = 0;
while(i < 4)
    a = U(a);
    movelist(length(movelist) + 1) = 11;
    i = i + 1;

    %finalPrint(a, movelist)
%     a
    if((a(3,8) == a(5,11)) && (a(5,8) == a(4,8)) && ((a(5,8) ~= a(5,9)) || (a(5,11) ~= a(5,10))))
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = R(a);
        movelist(length(movelist) + 1) = 1;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Ri(a);
        movelist(length(movelist) + 1) = 2;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Fi(a);
        movelist(length(movelist) + 1) = 10;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = F(a);
        movelist(length(movelist) + 1) = 9;
        flag = 1;

    %Left Side
    elseif((a(3,8) == a(5,5)) && (a(5,8) == a(4,8)) && ((a(5,8) ~= a(5,7)) || (a(5,6) ~= a(5,5))))
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Li(a);
        movelist(length(movelist) + 1) = 4;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = L(a);
        movelist(length(movelist) + 1) = 3;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = F(a);
        movelist(length(movelist) + 1) = 9;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Fi(a);
        movelist(length(movelist) + 1) = 10;
        flag = 1;
    end
    %RIGHT FACE MOVES
    %Right side
    if((a(2,9) == a(5,2)) && (a(5,11) == a(4,11)) && ((a(5,11) ~= a(5,12)) || (a(5,1) ~= a(5,2))))
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = B(a);
        movelist(length(movelist) + 1) = 5;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Bi(a);
        movelist(length(movelist) + 1) = 6;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Ri(a);
        movelist(length(movelist) + 1) = 2;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = R(a);
        movelist(length(movelist) + 1) = 1;
        flag = 1;
    %Left Side
    elseif((a(2,9) == a(5,8)) && (a(5,11) == a(4,11)) && ((a(5,11) ~= a(5,10)) || (a(5,8) ~= a(5,9))))
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Fi(a);
        movelist(length(movelist) + 1) = 10;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = F(a);
        movelist(length(movelist) + 1) = 9;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = R(a);
        movelist(length(movelist) + 1) = 1;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Ri(a);
        movelist(length(movelist) + 1) = 2;
        flag = 1;
    end
    %BACK FACE MOVES
    %Right side
    if((a(1,8) == a(5,5)) && (a(4,2) == a(5,2)) && ((a(5,2) ~= a(5,3)) || (a(5,4) ~= a(5,5))))
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = L(a);
        movelist(length(movelist) + 1) = 3;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Li(a);
        movelist(length(movelist) + 1) = 4;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Bi(a);
        movelist(length(movelist) + 1) = 6;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = B(a);
        movelist(length(movelist) + 1) = 5;
        flag = 1;
    %Left Side
    elseif((a(1,8) == a(5,11)) && (a(4,2) == a(5,2)) &&((a(5,2) ~= a(5,1)) || (a(5,11) ~= a(5,12))))
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Ri(a);
        movelist(length(movelist) + 1) = 2;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = R(a);
        movelist(length(movelist) + 1) = 1;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = B(a);
        movelist(length(movelist) + 1) = 5;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Bi(a);
        movelist(length(movelist) + 1) = 6;
        flag = 1;
    end
    %LEFT FACE MOVES
    %Right side
    if((a(2,7) == a(5,8)) && (a(5,5) == a(4,5)) && ((a(5,5) ~= a(5,6)) || (a(5,7) ~= a(5,8))))
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = F(a);
        movelist(length(movelist) + 1) = 9;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Fi(a);
        movelist(length(movelist) + 1) = 10;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Li(a);
        movelist(length(movelist) + 1) = 4;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = L(a);
        movelist(length(movelist) + 1) = 3;
        flag = 1;
    %Left Side
    elseif((a(2,7) == a(5,2)) && (a(5,5) == a(4,5)) && ((a(5,5) ~= a(5,4)) || (a(5,2) ~= a(5,3))))
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Bi(a);
        movelist(length(movelist) + 1) = 6;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = B(a);
        movelist(length(movelist) + 1) = 5;
        a = U(a);
        movelist(length(movelist) + 1) = 11;
        a = L(a);
        movelist(length(movelist) + 1) = 3;
        a = Ui(a);
        movelist(length(movelist) + 1) = 12;
        a = Li(a);
        movelist(length(movelist) + 1) = 4;
        flag = 1;
    end

end
