%Get a letter form the user and consider that is a vowel or consonent

Letter = input("Enter a letter: ", 's')
disp ("Your letter is: " + Letter)

if( Letter == 'A' || Letter == 'E' || Letter == 'I' || Letter == 'O' || Letter == 'U')
    disp("This is a vowel")

elseif( Letter == 'a' || Letter == 'e' || Letter == 'i' || Letter == 'o' || Letter == 'u')
    disp("This is a vowel")

else
    disp("This is a consonant")

end


%other way: conver lower and find

Letter = input("Enter a letter: ", 's')
ltr = lower(Letter)
disp ("Your letter is: " + ltr)

if( ltr == 'a' || ltr == 'e' || ltr == 'i' || ltr == 'o' || ltr == 'u')
    disp("This is a vowel")

else
    disp("This is a consonant")

end