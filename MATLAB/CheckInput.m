function [valid] = CheckInput(a)

c = 0;
[m, n] = size(a);
if ((m ~= 9) || (n ~= 12))
    valid = 0;
    return
end
if ((sum(a(:) == 'b') == 9) && (sum(a(:) == 'w') == 9) && (sum(a(:) == 'g') == 9) && (sum(a(:) == 'o') == 9) && (sum(a(:) == 'r') == 9) && (sum(a(:) == 'y') == 9))
    valid = 1;
else
    valid = 0;
    return;
end

whitecenter = 0;
if (a(2, 8) == 'w')
    whitecenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'w')
    whitecenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'w')
    whitecenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'w')
    whitecenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'w')
    whitecenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'w')
    whitecenter = 1;
    a(5, 2) = 0;
end

if (whitecenter == 0)
    valid = 0;
    return;
end

redcenter = 0;
if (a(2, 8) == 'r')
    redcenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'r')
    redcenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'r')
    redcenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'r')
    redcenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'r')
    redcenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'r')
    redcenter = 1;
    a(5, 2) = 0;
end

if (redcenter == 0)
    valid = 0;
    return;
end

yellowcenter = 0;
if (a(2, 8) == 'y')
    yellowcenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'y')
    yellowcenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'y')
    yellowcenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'y')
    yellowcenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'y')
    yellowcenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'y')
    yellowcenter = 1;
    a(5, 2) = 0;
end

if (yellowcenter == 0)
    valid = 0;
    return;
end

greencenter = 0;
if (a(2, 8) == 'g')
    greencenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'g')
    greencenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'g')
    greencenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'g')
    greencenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'g')
    greencenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'g')
    greencenter = 1;
    a(5, 2) = 0;
end

if (greencenter == 0)
    valid = 0;
    return;
end

orangecenter = 0;
if (a(2, 8) == 'o')
    orangecenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'o')
    orangecenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'o')
    orangecenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'o')
    orangecenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'o')
    orangecenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'o')
    orangecenter = 1;
    a(5, 2) = 0;
end

if (orangecenter == 0)
    valid = 0;
    return;
end

bluecenter = 0;
if (a(2, 8) == 'b')
    bluecenter = 1;
    a(2, 8) = 0;
elseif (a(5, 8) == 'b')
    bluecenter = 1;
    a(5, 8) = 0;
elseif (a(8, 8) == 'b')
    bluecenter = 1;
    a(8, 8) = 0;
elseif (a(5, 11) == 'b')
    bluecenter = 1;
    a(5, 11) = 0;
elseif (a(5, 5) == 'b')
    bluecenter = 1;
    a(5, 5) = 0;
elseif (a(5, 2) == 'b')
    bluecenter = 1;
    a(5, 2) = 0;
end

if (bluecenter == 0)
    valid = 0;
    return;
end

[a, valid] = CheckSides(a, 'w', 'b');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'w', 'o');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'w', 'g');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'w', 'r');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'y', 'b');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'y', 'o');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'y', 'g');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'y', 'r');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'b', 'r');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'g', 'r');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'g', 'o');
if (valid == 0)
    return
end

[a, valid] = CheckSides(a, 'b', 'o');
if (valid == 0)
    return
    
end
[a, valid] = SidesCheck(a, 'w', 'b', 'r');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'w', 'b', 'o');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'y', 'b', 'o');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'y', 'b', 'r');
if (valid == 0)
    return
end



[a, valid] = SidesCheck(a, 'g', 'r', 'w');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'g', 'r', 'y');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'g', 'w', 'o');
if (valid == 0)
    return
end

[a, valid] = SidesCheck(a, 'g', 'y', 'o');
if (valid == 0)
    return
end


end


