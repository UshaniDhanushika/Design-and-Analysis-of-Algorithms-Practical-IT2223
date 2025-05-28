%% using Functions loop

function result = factorialFunction(num)
   
    if num == 0 || num == 1  %% base case
        result = 1;
    
    else
       result = num * factorialFunction(num-1); %% Recursive call
    end

end

