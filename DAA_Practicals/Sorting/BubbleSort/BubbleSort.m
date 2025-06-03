%% Bubble Sort -Psudo Code
%% Start
%% step 01: Take an array of numbers
%% step 02:Repeat for all elements in the array
%% -> Compare each pair of adjacent elements
%% -> If the left element is greater than the right element 
%%     -> Swap them
%% step 03: Continue this process until the entire array is sorted 
%% -> Large elements will "bubble up" to the end in each
%% pass
%% end
%% End 

arr = [64,34,25,12,22,11,90];
n = length(arr);

for i=1:n-1
    for j=1:n-i
        if arr(j)>arr(j+1)
            temp = arr(j);
            arr(j)=arr(j+1);
            arr(j+1)=temp;
        end

    end
end

disp("Sorted Array:");
disp(arr);