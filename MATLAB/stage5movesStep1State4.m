function [a, movelist] = stage5movesStep1State4(a, movelist)

a = F(a);
a = R(a);
a = U(a);
a = Ri(a);
a = Ui(a);
a = Fi(a);
movelist(length(movelist)+1) = 9;
movelist(length(movelist)+1) = 1;
movelist(length(movelist)+1) = 11;
movelist(length(movelist)+1) = 2;
movelist(length(movelist)+1) = 12;
movelist(length(movelist)+1) = 10;


end

