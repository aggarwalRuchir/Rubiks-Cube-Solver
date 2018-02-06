function [a] = U(x)
    a = x;
    % Face Rotation
    a(1,7) = x(3,7);
    a(1,8) = x(2,7);
    a(1,9) = x(1,7);
    a(2,7) = x(3,8);
    a(2,9) = x(1,8);
    a(3,7) = x(3,9);
    a(3,8) = x(2,9);
    a(3,9) = x(1,9);
    % Side Rotation
    a(4,3) = x(4,6);
    a(4,2) = x(4,5);
    a(4,1) = x(4,4);
    a(4,12) = x(4,3);
    a(4,11) = x(4,2);
    a(4,10) = x(4,1);
    a(4,7) = x(4,10);
    a(4,8) = x(4,11);
    a(4,9) = x(4,12);
    a(4,4) = x(4,7);
    a(4,5) = x(4,8);
    a(4,6) = x(4,9);



end