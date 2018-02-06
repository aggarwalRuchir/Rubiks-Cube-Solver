function [a, movelist] = RP_CCW(a, movelist)

a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Bi(a);
movelist(length(movelist)+1) = 6;
a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Fi(a);
movelist(length(movelist)+1) = 10;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;


end

