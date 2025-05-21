gpa = zeros(1,5);
marks = zeros(1,5);

for i = 1:5
  marks(i) = input(["Enter the marks: "]);

    if(marks(i) < 0 || marks(i) > 100)
       disp("Invalid Marks");
    
    elseif(marks(i) >= 90 && marks(i)<= 100)
        disp('Grade: A+');
        gpa(i) = 4.0;
      
    elseif(marks(i)  >= 80)
         disp('Grade: A');
         gpa(i) = 4.0;
    
    elseif(marks(i)  >= 70)
        disp('Grade: B');
         gpa(i) = 3.0;
    
    
    elseif(marks(i)  >= 60)
        disp('Grade: C');
        gpa(i) = 2.0;
    
    elseif(marks(i)  >= 50)
        disp('Grade: D');
        gpa(i) = 1.0;
    
    else 
        disp('Grade: F');
        gpa(i) = 0.0;
    
    
    end
end

GPA = mean(gpa);
fprintf('\n Your GPA is : %.2f\n',GPA);