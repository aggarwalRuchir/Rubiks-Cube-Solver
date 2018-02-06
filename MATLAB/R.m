function [a] = R(x)
    a = x;
    % Face Rotation
    a(4,1) = x(3,9);
    a(5,1) = x(2,9);
    a(6,1) = x(1,9);
    a(9,9) = x(4,1);
    a(8,9) = x(5,1);
    a(7,9) = x(6,1);
    a(4,9) = x(7,9);
    a(5,9) = x(8,9);
    a(6,9) = x(9,9);
    a(1,9) = x(4,9);
    a(2,9) = x(5,9);
    a(3,9) = x(6,9);
    % Face Rotation
    a(4,12) = x(4,10);
    a(5,12) = x(4,11);
    a(6,12) = x(4,12);
    a(4,11) = x(5,10);
    a(6,11) = x(5,12);
    a(4,10) = x(6,10);
    a(5,10) = x(6,11);
    a(6,10) = x(6,12);



end
