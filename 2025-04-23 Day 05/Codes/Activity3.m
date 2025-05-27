
%Initialize vote counts for each candidate
votes=zeros(1,4)

%total number of voters
num_voters = input('Enter the total number of voters: ');

%Collect votes 
for i = 1:num_voters
    fprintf('\nVoter %d: Please give your vote\n', i);
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');

     vote = input('Enter your vote (1-4): ');
    
     switch vote
        case 1
            votes(1) = votes(1) + 1;  % Candidate A
        case 2
            votes(2) = votes(2) + 1;  % Candidate B
        case 3
            votes(3) = votes(3) + 1;  % Candidate C
        case 4
            votes(4) = votes(4) + 1;  % Candidate D
        otherwise
            fprintf('Invalid vote! Skipping this vote.\n');
    end
end

%Display vote count

fprintf('\n-------Vote counts----------\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));


% Determine the winner

[max_votes, win] = max(votes);
switch win
    case 1
        winner = 'Candidate A';
    case 2
        winner = 'Candidate B';
    case 3
        winner = 'Candidate C';
    case 4
        winner = 'Candidate D';
end
fprintf('\nThe winner is: %s with %d votes!\n', winner, max_votes);

while true
    fprintf('\n-----Visualization Menu-----\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    
    choice = input('Enter your choice (1-4): ');
    
    switch choice
        case 1
            % Bar chart
            figure;
            bar(votes);
            title('Vote Counts for Each Candidate');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'xticklabel', {'A', 'B', 'C', 'D'});
            grid on;
        case 2
            % Pie chart
            figure;
            pie(votes);
            title('Vote Distribution');
            legend('Candidate A', 'Candidate B', 'Candidate C', 'Candidate D');
        case 3
            % Scatter plot 
            figure;
            scatter(1:4, votes, 100, 'filled');
            title('Vote Counts in Scatter Plot');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'xtick', 1:4, 'xticklabel', {'A', 'B', 'C', 'D'});
            grid on;
        case 4
            % Exit the program
            disp('Exiting the program...');
            break;
        otherwise
            disp('Invalid choice! Please enter a valid option (1-4).');
    end
end
