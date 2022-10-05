function [Woo] = WooHah(num1,num2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Woo = (num1 + num2);
if (mod(Woo,2) == 0)
     Woo = 'Woo';
elseif (mod(Woo,2) == 1)
    Woo = 'Hah';
end