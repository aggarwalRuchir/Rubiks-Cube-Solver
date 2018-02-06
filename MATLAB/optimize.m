function [movelist] = optimize(movelist)
c = 0;
while (length(movelist) > c + 2)
    c = c + 1;
    d = 0;
    while (length(movelist) > d + 2)
        d = d + 1;
        one = ceil(movelist(d) / 2);
        two = ceil(movelist(d + 1) / 2);
        onedec = movelist(d);
        twodec = movelist(d + 1);
        
        if ((one == two) && (abs(onedec - twodec) == 1))
            movelist(d) = [];
            movelist(d) = [];
        end
        
        if ((movelist(d) == movelist(d + 1)) && (movelist(d) == movelist(d + 2)))
            movelist(d) = [];
            movelist(d) = [];
            if (mod(movelist(d), 2) == 0)
                movelist(d) = movelist(d) - 1;
            else
                movelist(d) = movelist(d) + 1;
            end
        end
    end
end


end

