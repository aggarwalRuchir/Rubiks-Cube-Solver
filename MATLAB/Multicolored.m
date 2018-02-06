function [a, movelist] = Multicolored(a, movelist)



a = R(a);
movelist(length(movelist) + 1) = 1;
a = R(a);
movelist(length(movelist) + 1) = 1;
a = L(a);
movelist(length(movelist) + 1) = 3;
a = L(a);
movelist(length(movelist) + 1) = 3;
a = U(a);
movelist(length(movelist) + 1) = 11;
a = U(a);
movelist(length(movelist) + 1) = 11;
a = D(a);
movelist(length(movelist) + 1) = 7;
a = D(a);
movelist(length(movelist) + 1) = 7;
a = F(a);
movelist(length(movelist) + 1) = 9;
a = F(a);
movelist(length(movelist) + 1) = 9;
a = B(a);
movelist(length(movelist) + 1) = 5;
a = B(a);
movelist(length(movelist) + 1) = 5;






end

