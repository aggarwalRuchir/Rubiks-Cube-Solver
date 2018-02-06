function [a, movelist] = Stage5movesStep2(a, movelist)

a = R(a);
a = U(a);
a = Ri(a);
a = U(a);
a = R(a);
a = U(a);
a = U(a);
a = Ri(a);
movelist(length(movelist)+1) = 1;
movelist(length(movelist)+1) = 11;
movelist(length(movelist)+1) = 2;
movelist(length(movelist)+1) = 11;
movelist(length(movelist)+1) = 1;
movelist(length(movelist)+1) = 11;
movelist(length(movelist)+1) = 11;
movelist(length(movelist)+1) = 2;

end

