function [x] = check_posi(cube, colour)
if((cube(4,6) == colour) || (cube(4,7) == colour) || (cube(3,7) == colour) || (cube(4,9) == colour)...
        || (cube(4,10) == colour) || (cube(3,9) == colour) || (cube(1,9) == colour) || (cube(4,12) == colour)...
        || (cube(4,1) == colour) || (cube(1,7) == colour) || (cube(4,3) == colour) || (cube(4,4) == colour))
    x = 1;
else
    x = 0;
end


end

