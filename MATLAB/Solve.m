function [a, movelist] = Solve(a, movelist)
% fprintf('After Stage1')
[a, movelist] = Stage1(a, movelist);
% fprintf('After Stage1')
% a
[a, movelist] = Stage3(a, movelist);
% fprintf('After Stage3')
% a
[a, movelist] = Stage4(a, movelist);
% fprintf('After Stage4')
% a
[a, movelist] = Stage5(a, movelist);
% fprintf('After Stage5')
% a
[a, movelist] = Stage6(a, movelist);
% fprintf('After Stage6')
[movelist] = optimize(movelist);
% a
end

