function [total] = change(penny,nickle,dime,quarter)
% Write a function that takes in the number of quarters, dimes, nickels, 
% and pennies as input and returns the total amount as output.
total = (penny*.01) + (nickle*.05) + (dime*.10) + (quarter*.25);
end

