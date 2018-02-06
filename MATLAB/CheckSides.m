function [a, valid] = CheckSides(a, color1, color2)

valid = 0;
% if ((a(1, 8) == color1) && (a(9, 8) == color2))
%     a(1,8) = 0;
%     a(9,8) = 0;
%     valid = 1;
%     return
% end
% 
% if ((a(1, 8) == color2) && (a(9, 8) == color1))
%     a(1,8) = 0;
%     a(9,8) = 0;
%     valid = 1;
%     return
% end

if((a(3,8) == color1) && (a(4,8) == color2))
    a(3,8) = 0;
    a(4,8) = 0;
    valid = 1;
    return
end

if((a(3,8) == color2) && (a(4,8) == color1))
    a(3,8) = 0;
    a(4,8) = 0;
    valid = 1;
    return
end



if((a(6,8) == color1) && (a(7,8) == color2))
    a(6,8) = 0;
    a(7,8) = 0;
    valid = 1;
    return
end
if((a(6,8) == color2) && (a(7,8) == color1))
    a(6,8) = 0;
    a(7,8) = 0;
    valid = 1;
    return
end

if((a(5, 3) == color1) && (a(5,4) == color2))
    a(5, 3) = 0;
    a(5, 4) = 0;
    valid = 1;
    return
end
if((a(5, 3) == color2) && (a(5,4) == color1))
    a(5, 3) = 0;
    a(5, 4) = 0;
    valid = 1;
    return
end

if((a(5, 6) == color1) && (a(5,7) == color2))
    a(5, 6) = 0;
    a(5, 7) = 0;
    valid = 1;
    return
end
if((a(5, 6) == color2) && (a(5,7) == color1))
    a(5, 6) = 0;
    a(5, 7) = 0;
    valid = 1;
    return
end

if((a(5, 9) == color1) && (a(5,10) == color2))
    a(5, 9) = 0;
    a(5, 10) = 0;
    valid = 1;
    return
end
if((a(5, 9) == color2) && (a(5,10) == color1))
    a(5, 9) = 0;
    a(5, 10) = 0;
    valid = 1;
    return
end

if((a(5, 12) == color1) && (a(5,1) == color2))
    a(5, 12) = 0;
    a(5, 1) = 0;
    valid = 1;
    return
end
if((a(5, 12) == color2) && (a(5,1) == color1))
    a(5, 12) = 0;
    a(5, 1) = 0;
    valid = 1;
    return
end

if((a(2, 9) == color1) && (a(4, 11) == color2))
    a(2, 9) = 0;
    a(4, 11) = 0;
    valid = 1;
    return
end
if((a(2, 9) == color2) && (a(4, 11) == color1))
    a(2, 9) = 0;
    a(4, 11) = 0;
    valid = 1;
    return
end

if((a(2, 7) == color1) && (a(4, 5) == color2))
    a(2, 7) = 0;
    a(4, 5) = 0;
    valid = 1;
    return
end
if((a(2, 7) == color2) && (a(4, 5) == color1))
    a(2, 7) = 0;
    a(4, 5) = 0;
    valid = 1;
    return
end

if((a(8, 7) == color1) && (a(6, 5) == color2))
    a(8, 7) = 0;
    a(6, 5) = 0;
    valid = 1;
    return
end
if((a(8, 7) == color2) && (a(6, 5) == color1))
    a(8, 7) = 0;
    a(6, 5) = 0;
    valid = 1;
    return
end

if((a(9, 8) == color1) && (a(6, 2) == color2))
    a(9, 8) = 0;
    a(6, 2) = 0;
    valid = 1;
    return
end
if((a(9, 8) == color2) && (a(6, 2) == color1))
    a(9, 8) = 0;
    a(6, 2) = 0;
    valid = 1;
    return
end

if((a(1, 8) == color1) && (a(4, 2) == color2))
    a(1, 8) = 0;
    a(4, 2) = 0;
    valid = 1;
    return
end
if((a(1, 8) == color2) && (a(4, 2) == color1))
    a(1, 8) = 0;
    a(4, 2) = 0;
    valid = 1;
    return
end

if((a(6, 11) == color1) && (a(8, 9) == color2))
    a(6, 11) = 0;
    a(8, 9) = 0;
    valid = 1;
    return
end
if((a(6, 11) == color2) && (a(8, 9) == color1))
    a(6, 11) = 0;
    a(8, 9) = 0;
    valid = 1;
    return
end

end

