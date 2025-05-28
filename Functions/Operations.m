function [add,sub,mul] = Operations(a,b) %% you have to assign variables using arrays for more opearations
    add = a+b;
    sub = a-b;
    mul = a*b;
end

%% If you call like this Operations(2,3) -> you can get only first operation
%% If you want to get multiple outputs
%%  -> you must to call [add,sub,mul] = Operations(2,3)