function [a, movelist] = Stage1(a, movelist)

i = 0;

while (i < 8)
    [a, movelist] = Stage1side(a, movelist);
    i = i + 1;
end
% loop = 0;



[a, movelist] = Stage1color(a, movelist);
while(a(5, 2) ~= a(6, 2))
    a = HR(a);
    movelist(length(movelist)+1) = 13;
end

% a = D(a);
% a = D(a);

end

