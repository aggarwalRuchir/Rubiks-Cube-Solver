function [a, movelist] = LP_CW(a, movelist)

a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = U(a);
movelist(length(movelist)+1) = 11;
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
a = U(a);
movelist(length(movelist)+1) = 11;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;


end

