function [a, movelist] = RP_Sequence(a, movelist)

a = Bi(a);
movelist(length(movelist)+1) = 6;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Bi(a);
movelist(length(movelist)+1) = 6;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Ri(a);
movelist(length(movelist)+1) = 2;
a = Bi(a);
movelist(length(movelist)+1) = 6;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Ui(a);
movelist(length(movelist)+1) = 12;


end

