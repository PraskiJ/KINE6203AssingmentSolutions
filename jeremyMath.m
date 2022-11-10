function [output1,output2,output3,output4] = jeremyMath(num1,num2)
% Write a function that takes 2 numbers as input and returns values for 
% the sum, difference, product and max of the two numbers as outputs.
output1 = (num1 + num2);
output2 = (num1 - num2);
output3 = (num1 * num2);
output4 = max(num1,num2);
end