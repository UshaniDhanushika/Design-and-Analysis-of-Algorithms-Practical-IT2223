%Initialize balance
balance = 1000;

%Display the menu
while true

fprintf('\n ---------- ATM Menu ------------\n')
fprintf('1.Diposit\n')
fprintf('2.Withdraw\n')
fprintf('3.Balance Inquiry\n')
fprintf('4.Exit\n')


%Get user input

choice=input('Please select an option (1-4): ')

switch choice
    case 1
        amount=input('Enter the amout you want to deposit: ')
        if amount > 0
            balance = balance + amount
            fprintf('Deposit Succesfull! Your new balance is:%.2f.\n',balance)
        else
            fprintf('Invalid Amount! Please enter a valid amount')
        end

    case 2
        withdraw=input('Enter the amount of withdraw: ')
        
        if withdraw>0
            if withdraw<=balance
                balance = balance - withdraw
                fprintf('You have successfully withdraw %.2f. Your new balance is %.2f.\n',withdraw,balance)
            else
                fprintf('Error! Your current balance is %.2f.\n',balance)

            end

        else
            fprintf('Error! Please enter valid amount')
         
        end

    case 3
        fprintf('Your currrent account balance is:%.2f.\n',balance)


    case 4
        fprintf('Thank you for using our ATM. Goodbye!\n');
        break;

    otherwise
        fprintf('Invalid selection! please select number between 1-4 ')

end

end