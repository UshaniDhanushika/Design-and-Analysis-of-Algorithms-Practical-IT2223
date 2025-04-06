%Get a marks from the user and print the grade 
%marks >= 90 A+
%marks >= 80 A
%marks >= 70 B
%marks >= 60 C
%marks >= 50 D
%else F 

x = input("Enter the number: ");

 if(x>100)
     disp("This is not a mark");

 elseif(x >= 90)
    disp('Your grade is A+');
 
 elseif(x >= 80)
   disp('Your grade is A');

 elseif(x >= 70)
   disp('Your grade is B');

 elseif(x >= 60)
   disp('Your grade is C');

 elseif(x >= 50)
   disp('Your grade is D');

 else(x<50)
 disp('F');
 
 end