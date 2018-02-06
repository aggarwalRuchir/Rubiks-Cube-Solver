function [num_edges, Front, Back, Right, Left] = Check_Edges(a)


num_edges = 0;
Front = 0;
Back = 0;
Right = 0;
Left = 0;
if (a(4, 8) == a(5, 8))
    num_edges = num_edges + 1;
    Front = Front + 1;
end
if (a(4, 11) == a(5, 11))
    num_edges = num_edges + 1;
    Right = Right + 1;
end
if (a(4, 2) == a(5, 2))
    num_edges = num_edges + 1;
    Back = Back + 1;
end
if (a(4, 5) == a(5, 5))
    num_edges = num_edges + 1;
    Left = Left + 1;
end



end

