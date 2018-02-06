function [a, movelist] = BP_Sequence(a, movelist)

a = Li(a);
movelist(length(movelist)+1) = 4;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Li(a);
movelist(length(movelist)+1) = 4;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Bi(a);
movelist(length(movelist)+1) = 6;
a = Li(a);
movelist(length(movelist)+1) = 4;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = L(a);
movelist(length(movelist)+1) = 3;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Ui(a);
movelist(length(movelist)+1) = 12;


end

