
stril = 'The cat sat on the mat ';
indic = strfind(stril,'cat');
disp(indic)


stril = 'The cat sat on the mat ';
disp(stril)
old ='cat';
new ='dog';
newTest =strrep(stril,old,new);
disp(newTest)


inputstring='apple,banana,orange,grapes';
substring=strsplit(inputstring,',');

st1 = 'apPLE';
lowerWord = lower(st1);
disp(lowerWord);

upperWord = upper(st1);
disp(upperWord);

trimTest = strtrim ('  Hello World  ');
disp(trimTest)
