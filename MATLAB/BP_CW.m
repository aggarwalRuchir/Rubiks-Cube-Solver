function [a, movelist] = BP_CW(a, movelist)

a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;
a = U(a);
movelist(length(movelist)+1) = 11;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Li(a);
movelist(length(movelist)+1) = 4;
a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;
a = Ri(a);
movelist(length(movelist)+1) = 2;
a = L(a);
movelist(length(movelist)+1) = 3;
a = U(a);
movelist(length(movelist)+1) = 11;
a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;

end

