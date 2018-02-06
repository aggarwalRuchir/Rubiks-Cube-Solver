function [a, movelist] = FP_Sequence(a, movelist)

a = Ri(a);
movelist(length(movelist)+1) = 2;
a = F(a);
movelist(length(movelist)+1) = 9;
a = Ri(a);
movelist(length(movelist)+1) = 2;
a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Fi(a);
movelist(length(movelist)+1) = 10;
a = Ri(a);
movelist(length(movelist)+1) = 2;
a = B(a);
movelist(length(movelist)+1) = 5;
a = B(a);
movelist(length(movelist)+1) = 5;
a = R(a);
movelist(length(movelist)+1) = 1;
a = R(a);
movelist(length(movelist)+1) = 1;
a = Ui(a);
movelist(length(movelist)+1) = 12;



end

