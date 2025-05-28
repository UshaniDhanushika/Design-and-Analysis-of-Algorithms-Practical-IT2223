%% using For loop

fac = 1;

n=input("Enter the number:");

for i = 1:n 
    fac = fac * i;
end

fprintf("Factorial of %d is: %d\n",n,fac);