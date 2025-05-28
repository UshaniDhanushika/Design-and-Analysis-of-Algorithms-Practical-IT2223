%% Selection Sort -Psudo Code
%% Start
%% step 01: Take an array of numbers 
%% step 02: Set first element as the current Position
%% step 03: From the current position,find the smallest number in the remining array
%% step 04: Swap the smallest number with the current position
%% step 05: Move to the next position and repeat Step 3 and Step 4 untile the whole aray is sorted
%% End

% Step 01: Take an array of numbers
array = [64, 25, 12, 22, 11];
n = length(array);

% Selection Sort
for i = 1:n-1
    min_idx = i; % Step 02: Set first element as the current Position
    
    % Step 03: Find the smallest number in the remaining array
    for j = i+1:n
        if array(j) < array(min_idx)
            min_idx = j;
        end
    end
    
    % Step 04: Swap the smallest number with the current position
    if min_idx ~= i
        temp = array(i);
        array(i) = array(min_idx);
        array(min_idx) = temp;
    end
end

% Display the sorted array
disp('Sorted array:');
disp(array);
