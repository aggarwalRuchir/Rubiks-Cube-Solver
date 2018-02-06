function [a, movelist] = LP_CCW(a, movelist)

a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Fi(a);
movelist(length(movelist)+1) = 10;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Bi(a);
movelist(length(movelist)+1) = 6;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;


end

