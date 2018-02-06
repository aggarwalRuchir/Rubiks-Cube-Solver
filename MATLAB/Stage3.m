function [cube, movelist] = Stage3(cube, movelist)

colour = cube(8,8);
%check if the colour piece is on the bottom || not?
% rotation_count = 0;
condition_true = 0;
if (cube(7,7) ~= colour)
    %if the first colour c||ner piece is on the top face
    if(check_posi(cube, colour) == 1)
        rotation_count = 0;
        while(rotation_count < 4)
            rotation_count = rotation_count + 1;
            if(cube(4,7) == colour)
                if(((cube(3,7) == cube(5,8)) || (cube(3,7) == cube(5,5))) && ((cube(4,6) == cube(5,8)) || (cube(4,6) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,6) == colour)
                if(((cube(3,7) == cube(5,8)) || (cube(3,7) == cube(5,5))) && ((cube(4,7) == cube(5,8)) || (cube(4,7) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            elseif(cube(3,7) == colour)
                if(((cube(4,7) == cube(5,8)) || (cube(4,7) == cube(5,5))) && ((cube(4,6) == cube(5,8)) || (cube(4,6) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            end
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
        end
    end
    if(condition_true == 1)
        %if the colour c||ner piece is on the bottom face
        while(cube(7,7) ~= colour)
            cube = Li(cube);
            movelist(length(movelist)+1) = 4;
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
            cube = L(cube);
            movelist(length(movelist)+1) = 3;
            cube = U(cube);
            movelist(length(movelist)+1) = 11;
        end
    end
end

condition_true = 0;
if (cube(7,9) ~= colour)
%if the second colour c||ner piece is on the top face
    if(check_posi(cube, colour) == 1)
        rotation_count = 0;
        while(rotation_count < 4)
            rotation_count = rotation_count + 1;
            if(cube(4,9) == colour)
                if(((cube(3,9) == cube(5,8)) || (cube(3,9) == cube(5,11))) && ((cube(4,10) == cube(5,8)) || (cube(4,10) == cube(5,11))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,10) == colour)
                if(((cube(3,9) == cube(5,8)) || (cube(3,9) == cube(5,11))) && ((cube(4,9) == cube(5,8)) || (cube(4,9) == cube(5,11))))
                    condition_true = 1;
                    break
                end
            elseif(cube(3,9) == colour)
                if(((cube(4,9) == cube(5,8)) || (cube(4,9) == cube(5,11))) && ((cube(4,10) == cube(5,8)) || (cube(4,10) == cube(5,11))))
                    condition_true = 1;
                    break
                end
            end
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
        end
    end
    if(condition_true == 1)
        %if the colour c||ner piece is on the bottom face
        while(cube(7,9) ~= colour)
            cube = Fi(cube);
            movelist(length(movelist)+1) = 10;
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
            cube = F(cube);
            movelist(length(movelist)+1) = 9;
            cube = U(cube);
            movelist(length(movelist)+1) = 11;
        end
    end
end

condition_true = 0;
if (cube(9,9) ~= colour)
    %if the third colour c||ner piece is on the top face
    if(check_posi(cube, colour) == 1)
        rotation_count = 0;
        while(rotation_count < 4)
            rotation_count = rotation_count + 1;
            %checking f|| positions around (0,8)
            if(cube(1,9) == colour)
                if(((cube(4,1) == cube(5,11)) || (cube(4,1) == cube(5,2))) && ((cube(4,12) == cube(5,11)) || (cube(4,12) == cube(5,2))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,1) == colour)
                if(((cube(1,9) == cube(5,2)) || (cube(1,9) == cube(5,11))) && ((cube(4,12) == cube(5,2)) || (cube(4,12) == cube(5,11))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,12) == colour)
                if(((cube(4,1) == cube(5,2)) || (cube(4,1) == cube(5,11))) && ((cube(1,9) == cube(5,2)) || (cube(1,9) == cube(5,11))))
                    condition_true = 1;
                    break
                end
            end
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
        end
    end
    if(condition_true == 1)
        %if the colour c||ner piece is on the bottom face
        while(cube(9,9) ~= colour)
            cube = Ri(cube);
            movelist(length(movelist)+1) = 2;
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
            cube = R(cube);
            movelist(length(movelist)+1) = 1;
            cube = U(cube);
            movelist(length(movelist)+1) = 11;
        end
    end
    
end
condition_true = 0;
if (cube(9,7) ~= colour)
    %if the fourth colour c||ner piece is on the top face
    if(check_posi(cube, colour) == 1)
        rotation_count = 0;
        while(rotation_count < 4)
            rotation_count = rotation_count + 1;
            %checking f|| positions around (0,6)
            if(cube(1,7) == colour)
                if(((cube(4,3) == cube(5,2)) || (cube(4,3) == cube(5,5))) && ((cube(4,4) == cube(5,2)) || (cube(4,4) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,3) == colour)
                if(((cube(1,7) == cube(5,2)) || (cube(1,7) == cube(5,5))) && ((cube(4,4) == cube(5,2)) || (cube(4,4) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            elseif(cube(4,4) == colour)
                if(((cube(4,3) == cube(5,2)) || (cube(4,3) == cube(5,5))) && ((cube(1,7) == cube(5,2)) || (cube(1,7) == cube(5,5))))
                    condition_true = 1;
                    break
                end
            end
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
        end
    end
    if(condition_true == 1)
        %if the colour c||ner piece is on the bottom face
        while(cube(9,7) ~= colour)
            cube = Bi(cube);
            movelist(length(movelist)+1) = 6;
            cube = Ui(cube);
            movelist(length(movelist)+1) = 12;
            cube = B(cube);
            movelist(length(movelist)+1) = 5;
            cube = U(cube);
            movelist(length(movelist)+1) = 11;
        end
    end
end
if(((cube(6,6) == colour) || (cube(6,7) == colour)) && (cube(7,7) ~= colour))
%if colour c||ner piece is on the top face, move it to the bottom face first
    cube = Li(cube);
    movelist(length(movelist)+1) = 4;
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = L(cube);
    movelist(length(movelist)+1) = 3;
elseif((cube(6,3) == colour) || (cube(6,4) == colour) && (cube(9,7) ~= colour))
    %if colour c||ner piece is on the top face, move it to the bottom face first
    cube = Bi(cube);
    movelist(length(movelist)+1) = 6;
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = B(cube);
    movelist(length(movelist)+1) = 5;
elseif(((cube(6,1) == colour) || (cube(6,12) == colour)) && (cube(9,9) ~= colour))
    %if colour c||ner piece is on the top face, move it to the bottom face first
    cube = Ri(cube);
    movelist(length(movelist)+1) = 2;
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = R(cube);
    movelist(length(movelist)+1) = 1;
elseif(((cube(6,9) == colour) || (cube(6,10) == colour)) && (cube(7,9) ~= colour))
    %if colour c||ner piece is on the top face, move it to the bottom face first
    cube = Fi(cube);
    movelist(length(movelist)+1) = 10;
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = F(cube);
    movelist(length(movelist)+1) = 9;
end
if((cube(7,7) == colour) && ((cube(6,6) ~= cube(5,5)) || (cube(6,7) ~= cube(5,8))))
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = Li(cube);
    movelist(length(movelist)+1) = 4;
    cube = U(cube);
    movelist(length(movelist)+1) = 11;
    cube = L(cube);
    movelist(length(movelist)+1) = 3;
elseif((cube(9,7) == colour) && ((cube(6,3) ~= cube(5,2)) || (cube(6,4) ~= cube(5,5))))
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = Bi(cube);
    movelist(length(movelist)+1) = 6;
    cube = U(cube);
    movelist(length(movelist)+1) = 11;
    cube = B(cube);
    movelist(length(movelist)+1) = 5;
elseif((cube(9,9) == colour) && ((cube(6,1) ~= cube(5,2)) || (cube(6,12) ~= cube(5,11))))
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = Ri(cube);
    movelist(length(movelist)+1) = 2;
    cube = U(cube);
    movelist(length(movelist)+1) = 11;
    cube = R(cube);
    movelist(length(movelist)+1) = 1;
elseif((cube(7,9) == colour) && ((cube(6,9) ~= cube(5,8)) || (cube(6,10) ~= cube(5,11))))
    cube = Ui(cube);
    movelist(length(movelist)+1) = 12;
    cube = Fi(cube);
    movelist(length(movelist)+1) = 10;
    cube = U(cube);
    movelist(length(movelist)+1) = 11;
    cube = F(cube);
    movelist(length(movelist)+1) = 9;
end
if(check_posi(cube, colour) == 1)
    [cube, movelist] = Stage3(cube, movelist);
end

end

