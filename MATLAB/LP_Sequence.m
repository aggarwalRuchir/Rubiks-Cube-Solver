function [a, movelist] = LP_Sequence(a, movelist)

a = Fi(a);
movelist(length(movelist)+1) = 10;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Fi(a);
movelist(length(movelist)+1) = 10;
a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Li(a);
movelist(length(movelist)+1) = 4;
a = Fi(a);
movelist(length(movelist)+1) = 10;
a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Ui(a);
movelist(length(movelist)+1) = 12;


end

