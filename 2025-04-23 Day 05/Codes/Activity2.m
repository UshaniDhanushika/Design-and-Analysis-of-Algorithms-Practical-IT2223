
%Input marks for 5 students 
marks=zeros(1,5);

for i = 1:5
    marks(i) = input(sprintf('Enter marks for student %d: ', i));

    if(marks(i)<0 || marks(i)>100)
        fprintf('Invalid marks')

    elseif(marks(i)>=90 && marks(i)<=100)
        fprintf('Grade = A\n')
    
    elseif(marks(i) >= 80)
        fprintf('Grade = B\n')
       
    elseif(marks(i) >= 70)
        fprintf('Grade = C\n')
       
    elseif(marks(i) >= 60)
        fprintf('Grade = D\n')
      

    else
        fprintf('Grade: F\n');
    end
end

%display a menu
while true
     
    fprintf('\n------Menu------\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');

    choice = input('Enter your choice (1-3): ');
    
    switch choice
        case 1
           
            figure;
            bar(marks);
            title('Marks of 5 Students');
            xlabel('Student Number');
            ylabel('Marks');
            
        case 2
           
            avg = mean(marks);
            fprintf('Average Marks: %.2f\n', avg);
            
        case 3
           
            fprintf('Thank you for using the program!\n');
            break;
            
        otherwise
            fprintf('Invalid choice. Please enter 1, 2, or 3.\n');
    end
end