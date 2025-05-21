a = input("Enter number 1: ")
b = input("Enter number 2: ")

sign =input("Enter the operator ( + , - , / , *): ", "s");

switch(sign)
    case '+'
        result = a + b;
        fprintf("Summation of the entered numbers: %.2f\n ", result)
    
    case '-'
        result = a - b;
        fprintf("Subtraction of the entered numbers: %.2f\n ", result)
    
    case '*'
        result = a * b;
        fprintf("Subtraction of the entered numbers: %.2f\n " ,  result)

     % display dammoth %.2f\n  wada karan na 
     % fprintf dammoth result ta kaln ',' danna oni naththan disp daanawanan '+' danna oni 


    case '/'
        
        if  b ~= 0
            result = a / b;
            fprintf("Multiplication of the entered numbers: %.2f\n ", result)
    
        else
            
            disp ("Error: Division by zero")

        end
    
    otherwise
        disp("This is not a valid operator")
    
end