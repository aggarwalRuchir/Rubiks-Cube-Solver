function [a, movelist] = SquareInMiddle(a, movelist)

a = R(a);
movelist(length(movelist) + 1) = 1;
a = Li(a);
movelist(length(movelist) + 1) = 4;
a = U(a);
movelist(length(movelist) + 1) = 11;
a = Di(a);
movelist(length(movelist) + 1) = 8;
a = Fi(a);
movelist(length(movelist) + 1) = 10;
a = B(a);
movelist(length(movelist) + 1) = 5;
a = R(a);
movelist(length(movelist) + 1) = 1;
a = Li(a);
movelist(length(movelist) + 1) = 4;

end

