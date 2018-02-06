function [a, valid] = SidesCheck(a, color1, color2, color3)


valid = 0;

if ((a(4, 7) == color1) && (a(3, 7) == color2) && (a(4, 6) == color3))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end

if ((a(4, 7) == color2) && (a(3, 7) == color1) && (a(4, 6) == color3))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end

if ((a(4, 7) == color1) && (a(3, 7) == color3) && (a(4, 6) == color2))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end

if ((a(4, 7) == color2) && (a(3, 7) == color3) && (a(4, 6) == color1))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end

if ((a(4, 7) == color3) && (a(3, 7) == color2) && (a(4, 6) == color1))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end

if ((a(4, 7) == color3) && (a(3, 7) == color1) && (a(4, 6) == color2))
    valid = 1;
    a(4, 7) = 0;
    a(3, 7) = 0;
    a(4, 6) = 0;
    return;
end



if ((a(4, 9) == color1) && (a(3, 9) == color2) && (a(4, 10) == color3))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end

if ((a(4, 9) == color2) && (a(3, 9) == color1) && (a(4, 10) == color3))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end

if ((a(4, 9) == color1) && (a(3, 9) == color3) && (a(4, 10) == color2))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end

if ((a(4, 9) == color2) && (a(3, 9) == color3) && (a(4, 10) == color1))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end



if ((a(6, 7) == color1) && (a(7, 7) == color2) && (a(6, 6) == color3))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(6, 7) == color2) && (a(7, 7) == color1) && (a(6, 6) == color3))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(6, 7) == color1) && (a(7, 7) == color3) && (a(6, 6) == color2))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(6, 7) == color2) && (a(7, 7) == color3) && (a(6, 6) == color1))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(6, 7) == color3) && (a(7, 7) == color2) && (a(6, 6) == color1))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(6, 7) == color3) && (a(7, 7) == color1) && (a(6, 6) == color2))
    valid = 1;
    a(6, 7) = 0;
    a(7, 7) = 0;
    a(6, 6) = 0;
    return;
end

if ((a(4, 9) == color3) && (a(3, 9) == color2) && (a(4, 10) == color1))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end

if ((a(4, 9) == color3) && (a(3, 9) == color1) && (a(4, 10) == color2))
    valid = 1;
    a(4, 9) = 0;
    a(3, 9) = 0;
    a(4, 10) = 0;
    return;
end



if ((a(6, 9) == color1) && (a(7, 9) == color2) && (a(6, 10) == color3))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end

if ((a(6, 9) == color2) && (a(7, 9) == color1) && (a(6, 10) == color3))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end

if ((a(6, 9) == color1) && (a(7, 9) == color3) && (a(6, 10) == color2))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end

if ((a(6, 9) == color2) && (a(7, 9) == color3) && (a(6, 10) == color1))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end

if ((a(6, 9) == color3) && (a(7, 9) == color2) && (a(6, 10) == color1))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end

if ((a(6, 9) == color3) && (a(7, 9) == color1) && (a(6, 10) == color2))
    valid = 1;
    a(6, 9) = 0;
    a(7, 9) = 0;
    a(6, 10) = 0;
    return;
end




if ((a(1, 9) == color1) && (a(4, 1) == color2) && (a(4, 12) == color3))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end

if ((a(1, 9) == color2) && (a(4, 1) == color1) && (a(4, 12) == color3))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end

if ((a(1, 9) == color1) && (a(4, 1) == color3) && (a(4, 12) == color2))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end

if ((a(1, 9) == color2) && (a(4, 1) == color3) && (a(4, 12) == color1))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end

if ((a(1, 9) == color3) && (a(4, 1) == color2) && (a(4, 12) == color1))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end

if ((a(1, 9) == color3) && (a(4, 1) == color1) && (a(4, 12) == color2))
    valid = 1;
    a(1, 9) = 0;
    a(4, 1) = 0;
    a(4, 12) = 0;
    return;
end




if ((a(4, 3) == color1) && (a(1, 7) == color2) && (a(4, 4) == color3))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(4, 3) == color2) && (a(1, 7) == color1) && (a(4, 4) == color3))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(4, 3) == color1) && (a(1, 7) == color3) && (a(4, 4) == color2))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(4, 3) == color2) && (a(1, 7) == color3) && (a(4, 4) == color1))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(4, 3) == color3) && (a(1, 7) == color2) && (a(4, 4) == color1))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(4, 3) == color3) && (a(1, 7) == color1) && (a(4, 4) == color2))
    valid = 1;
    a(4, 3) = 0;
    a(1, 7) = 0;
    a(4, 4) = 0;
    return;
end

if ((a(6, 3) == color1) && (a(6, 4) == color2) && (a(9, 7) == color3))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end

if ((a(6, 3) == color2) && (a(6, 4) == color1) && (a(9, 7) == color3))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end

if ((a(6, 3) == color1) && (a(6, 4) == color3) && (a(9, 7) == color2))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end

if ((a(6, 3) == color2) && (a(6, 4) == color3) && (a(9, 7) == color1))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end

if ((a(6, 3) == color3) && (a(6, 4) == color2) && (a(9, 7) == color1))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end

if ((a(6, 3) == color3) && (a(6, 4) == color1) && (a(9, 7) == color2))
    valid = 1;
    a(6, 3) = 0;
    a(6, 4) = 0;
    a(9, 7) = 0;
    return;
end


if ((a(6, 1) == color1) && (a(6, 12) == color2) && (a(9, 9) == color3))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end

if ((a(6, 1) == color2) && (a(6, 12) == color1) && (a(9, 9) == color3))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end

if ((a(6, 1) == color1) && (a(6, 12) == color3) && (a(9, 9) == color2))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end

if ((a(6, 1) == color2) && (a(6, 12) == color3) && (a(9, 9) == color1))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end

if ((a(6, 1) == color3) && (a(6, 12) == color2) && (a(9, 9) == color1))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end

if ((a(6, 1) == color3) && (a(6, 12) == color1) && (a(9, 9) == color2))
    valid = 1;
    a(6, 1) = 0;
    a(6, 12) = 0;
    a(9, 9) = 0;
    return;
end




end