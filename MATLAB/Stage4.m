function [a, movelist] = Stage4(a, movelist)
% a
	%Front check 
check = -1;
i = -1;
flag = -1;
if((a(4,8) == a(5,8)) || (a(4,8) == a(5,11)) || (a(4,8) == a(5,2)) || (a(4, 8) == a(5, 5)) || (a(4, 11) == a(5, 8)) || (a(4, 11) == a(5, 11)) || (a(4, 11) == a(5, 2)) || (a(4, 11) == a(5, 5)) || (a(4, 2) == a(5, 8)) || (a(4, 2) == a(5, 11)) || (a(4, 2) == a(5, 2)) || (a(4, 2) == a(5, 5)) || (a(4, 5) == a(5, 8)) || (a(4, 5) == a(5, 11)) || (a(4, 11) == a(5, 2)) || (a(4, 5) == a(5, 5)))
    while (i < 4)
        if(((a(5, 8) == a(4, 8)) && ((a(3, 8) == a(5, 5)) || (a(3, 8) == a(5, 11)))) || ((a(5, 5) == a(4, 5)) && ((a(2, 7) == a(5, 8)) || (a(2, 7) == a(5, 2)))) || ((a(5, 2) == a(4, 2)) && ((a(1, 8) == a(5, 5)) || (a(3, 8) == a(5, 11)))) || ((a(5, 11) == a(3,10)) && ((a(2, 9) == a(5, 8)) || (a(2, 9) == a(5, 2)))))
            [a, movelist, check] = Stage4_moves(a, movelist);
%             fprintf('1\n');
        end
        i = i + 1;
%         fprintf('2\n');
    end
%     fprintf('3\n');
end
if((a(5, 11) ~= a(5, 12)) || (a(5, 1) ~= a(5, 2))) %Right + Back
%     fprintf('4\n');
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = B(a);
    movelist(length(movelist)+1) = 5;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Bi(a);
    movelist(length(movelist)+1) = 6;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Ri(a);
    movelist(length(movelist)+1) = 2;
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = R(a);
    movelist(length(movelist)+1) = 1;
    [a, movelist, check] = Stage4_moves(a, movelist);

    if(check == 0)
%         fprintf('5\n');
        a = Ri(a);
        movelist(length(movelist)+1) = 2;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = R(a);
        movelist(length(movelist)+1) = 1;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = B(a);
        movelist(length(movelist)+1) = 5;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = Bi(a);
        movelist(length(movelist)+1) = 6;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;

        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Ri(a);
        movelist(length(movelist)+1) = 2;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = R(a);
        movelist(length(movelist)+1) = 1;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = B(a);
        movelist(length(movelist)+1) = 5;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Bi(a);
        movelist(length(movelist)+1) = 6;
        [a, movelist, check] = Stage4_moves(a, movelist);
    end
elseif((a(5,2) ~= a(5,3)) || (a(5,4) ~= a(5,5))) %Back + Left	
%     fprintf('6\n');
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = L(a);
    movelist(length(movelist)+1) = 3;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Li(a);
    movelist(length(movelist)+1) = 4;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Bi(a);
    movelist(length(movelist)+1) = 6;
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = B(a);
    movelist(length(movelist)+1) = 5;
    [a, movelist, check] = Stage4_moves(a, movelist);

    if(check == 0)
%         fprintf('7\n');
        a = Bi(a);
        movelist(length(movelist)+1) = 6;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = B(a);
        movelist(length(movelist)+1) = 5;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = L(a);
        movelist(length(movelist)+1) = 3;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = Li(a);
        movelist(length(movelist)+1) = 4;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;

        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Bi(a);
        movelist(length(movelist)+1) = 6;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = B(a);
        movelist(length(movelist)+1) = 5;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = L(a);
        movelist(length(movelist)+1) = 3;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Li(a);
        movelist(length(movelist)+1) = 4;
        [a, movelist, check] = Stage4_moves(a, movelist);
    end
% else
elseif((a(5,5) ~= a(5,6)) || (a(5,7) ~= a(5,8))) %Front + Left
%     fprintf('8\n');
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = F(a);
    movelist(length(movelist)+1) = 9;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Fi(a);
    movelist(length(movelist)+1) = 10;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Li(a);
    movelist(length(movelist)+1) = 4;
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = L(a);
    movelist(length(movelist)+1) = 3;
    [a, movelist, check] = Stage4_moves(a, movelist);

    if(check == 0)
%         fprintf('9\n');
        a = Li(a);
        movelist(length(movelist)+1) = 4;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = L(a);
        movelist(length(movelist)+1) = 3;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = F(a);
        movelist(length(movelist)+1) = 9;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = Fi(a);
        movelist(length(movelist)+1) = 10;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;

        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Li(a);
        movelist(length(movelist)+1) = 4;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = L(a);
        movelist(length(movelist)+1) = 3;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = F(a);
        movelist(length(movelist)+1) = 9;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Fi(a);
        movelist(length(movelist)+1) = 10;
        [a, movelist, check] = Stage4_moves(a, movelist);
    end
elseif((a(5,8) ~= a(5,9)) || (a(5,10) ~= a(5,11))) %Front + Right
%     fprintf('10\n');
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Fi(a);
    movelist(length(movelist)+1) = 10;
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = F(a);
    movelist(length(movelist)+1) = 9;
    a = U(a);
    movelist(length(movelist)+1) = 11;
    a = R(a);
    movelist(length(movelist)+1) = 1;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
    a = Ri(a);
    movelist(length(movelist)+1) = 2;
    [a, movelist, check] = Stage4_moves(a, movelist);

    if(check == 0)
%         fprintf('11\n');
        a = R(a);
        movelist(length(movelist)+1) = 1;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = Ri(a);
        movelist(length(movelist)+1) = 2;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Fi(a);
        movelist(length(movelist)+1) = 10;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = F(a);
        movelist(length(movelist)+1) = 9;
        a = U(a);
        movelist(length(movelist)+1) = 11;

        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = R(a);
        movelist(length(movelist)+1) = 1;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Ri(a);
        movelist(length(movelist)+1) = 2;
        a = Ui(a);
        movelist(length(movelist)+1) = 12;
        a = Fi(a);
        movelist(length(movelist)+1) = 10;
        a = U(a);
        movelist(length(movelist)+1) = 11;
        a = F(a);
        movelist(length(movelist)+1) = 9;
        [a, movelist, check] = Stage4_moves(a, movelist);
    end
end

if((a(5,5) ~= a(5,6)) || (a(5,7) ~= a(5,8)) || (a(5,8) ~= a(5,9)) || (a(5,10) ~= a(5,11)) || (a(5,11) ~= a(5,12)) || (a(5,1) ~= a(5,2)) || (a(5,2) ~= a(5,3)) || (a(5,4) ~= a(5,5)))
    [a, movelist] = Stage4(a, movelist);
%     fprintf('12\n');
end


end

