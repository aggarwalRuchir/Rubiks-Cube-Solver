function [a, movelist] = FP_CCW(a, movelist)

a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = L(a);
movelist(length(movelist)+1) = 3;
a = Ri(a);
movelist(length(movelist)+1) = 2;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Li(a);
movelist(length(movelist)+1) = 4;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Ui(a);
movelist(length(movelist)+1) = 12;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;



end

