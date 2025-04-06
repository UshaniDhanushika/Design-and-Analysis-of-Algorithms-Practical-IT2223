%Get three numbers and find maximum of it

num1 = input('Enter number 1:');
num2 = input('Enter number 2:');
num3 = input('Enter number 3:');

if(num1>num2 && num1 > num3)
    disp(num1 + " is the maximum number")

elseif(num2>num1 && num2>num3)
  disp(num2 + " is the maximum number")

else
  disp(num3 + " is the maximum number")

end

