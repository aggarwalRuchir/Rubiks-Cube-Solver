function [a, movelist] = Stage6(a, movelist)


[num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);

%Performs sequence based on the location of the correct corners
while ( num_corners ~= 4)
    if (check_A == 1 && check_B == 1)
        [a, movelist] = FP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    elseif (check_B == 1 && check_C == 1)
        [a, movelist] = FP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    elseif (check_B == 1 && check_D == 1)
        [a, movelist] = LP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    elseif (check_A == 1 && check_C == 1)
        [a, movelist] = RP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    elseif (check_A == 1 && check_D == 1)
        [a, movelist] = FP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    elseif (check_C == 1 && check_D == 1)
        [a, movelist] = BP_Sequence(a, movelist);
        [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist);
    end
    
end
%%%%%%%%%%%%%%%%%%%		   STEP 2			%%%%%%%%%%%%%%%%%%%%%%
while(a(4, 1) ~= a(5, 1))
   a = U(a);
   movelist(length(movelist)+1) = 11;
end
%Gets color of the edges && checks number of correct edges
[num_edges, Front, Back, Right, Left] = Check_Edges(a);

%Performs Sequence based on the number of correct edges
while ( num_edges ~= 4)
   if (num_edges == 1)
       if (Front == 1)
           color1 = a(4,2);  %Back Phase Center Color
           [front_Center, back_Center, right_Center, left_Center] = Center_Colors(a);
           if (color1 == right_Center)
               CW = 1;
               [a, movelist] = BP_CW(a, movelist);
           elseif (color1 == left_Center)
               CCW = 1;
               [a, movelist] = BP_CCW(a, movelist);
           end
       elseif (Back == 1)
           color1 = a(4,8);  %Front Phase Center Color
           [front_Center, back_Center, right_Center, left_Center] = Center_Colors(a);
           if (color1 == right_Center)
               CCW = 1;
               [a, movelist] = FP_CCW(a, movelist);
           elseif (color1 == left_Center)
               CW = 1;
               [a, movelist] = FP_CW(a, movelist);
           end
       elseif (Right == 1)
           color1 = a(4,5);	%Left Phase Center Color
           [front_Center, back_Center, right_Center, left_Center] = Center_Colors(a);
           if (color1 == front_Center)
               CCW = 1;
               [a, movelist] = LP_CCW(a, movelist);
           elseif (color1 == back_Center)
               CW = 1;
               [a, movelist] = LP_CW(a, movelist);
           end
       elseif (Left == 1)
           color1 = a(4,11);   %Right Phase Center Color
           [front_Center, back_Center, right_Center, left_Center] = Center_Colors(a);
           if (color1 == front_Center)
               CW = 1;
               [a, movelist] = RP_CW(a, movelist);
           elseif (color1 == back_Center)
               CCW = 1;
               [a, movelist] = RP_CCW(a, movelist);
           end
       end
       %Gets new data after performing sequence		
       [num_edges, Front, Back, Right, Left] = Check_Edges(a);


   elseif (num_edges == 0)
       [a, movelist] = FP_CW(a, movelist);
       [num_edges, Front, Back, Right, Left] = Check_Edges(a);
   end




end




end

