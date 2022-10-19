function [Woo] = WooHah(num1,num2)
% Write a function that takes 2 numbers as inputs and returns Woo if 
% their sum is even and Hah if their sum is odd. 

Woo = (num1 + num2);
if (mod(Woo,2) == 0)
     Woo = 'Woo';
elseif (mod(Woo,2) == 1)
    Woo = 'Hah';
end