function [length,firstLetter,lastLetter] = stringIn(str)

% Write a function that takes a string value as input and returns the length 
% of the string and the first and last character as outputs.

length = strlength(str);
firstLetter = str(1);
lastLetter = str(end);

disp(str)
disp(length)
disp(firstLetter)
disp(lastLetter)

end