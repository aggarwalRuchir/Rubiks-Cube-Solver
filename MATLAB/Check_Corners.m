function [num_corners, check_A, check_B, check_C, check_D] = Check_Corners(a, movelist)



check_A = 0;
check_B = 0;
check_C = 0;
check_D = 0;
num_corners = 0;
while (num_corners < 2)
  if (a(4,3) == a(5,3))			   %Check A
    if (a(4,4) == a(5,4))
       num_corners = num_corners + 1;
       check_A = 1;
    end
  end
  if (a(4,1) == a(5,1))			   %Check B
    if (a(4,12) == a(5,12))
          num_corners = num_corners + 1;
          check_B = 1;
    end
  end
  if (a(4,6) == a(5,6))				%Check C
    if (a(4,7) == a(5,7))
          num_corners = num_corners + 1;
          check_C = 1;
    end
  end
  if (a(4,9) == a(5,9))			   %Check D
    if (a(4,10) == a(5,10))
          num_corners = num_corners + 1;
          check_D = 1;
    end
  end
  if (num_corners >= 2)
    return;
  else
    num_corners = 0;
    check_A = 0;
    check_B = 0;
    check_C = 0;
    check_D = 0;
    a = Ui(a);
    movelist(length(movelist)+1) = 12;
  end
end

end

