function [a, movelist] = FP_CW(a, movelist)

a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;
a = U(a);
movelist(length(movelist)+1) = 11;
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
a = U(a);
movelist(length(movelist)+1) = 11;
a = F(a);
movelist(length(movelist)+1) = 9;
a = F(a);
movelist(length(movelist)+1) = 9;




end

