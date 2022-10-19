function numberCounter(a,b)

%  Write a function that takes 2 numbers as input and displays a counter 
% from the lower number to the higher number. 
% disp(a:1:b)

for input = a:1:b
if a < b
    a = a + 1;  
    disp(input)
else
    b = b + 1;
    disp(input)
end
end
