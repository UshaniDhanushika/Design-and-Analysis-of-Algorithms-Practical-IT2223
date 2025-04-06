%StringFunction
str1 = 'apple';
str2 = 'banana';

result1 = strcat(str1,str2);
disp(result1)


x = {'Hello','world','sri'};
result2=strcat(x{:});
disp(result2);

result3 = strjoin(x,' ');
disp(result3);


str1 = 'age';
str2 = 'Age';
result4 = strcmp(str1,str2);
disp(result4)
%strcmp = used to compare strings - if both are equal return true(1) else return false(0)