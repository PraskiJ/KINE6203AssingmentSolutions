function [trueSide] = triangle(tri);
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%tri = [side1 side2 side3]
%break up each side to equal the spot in the matrix
tri = sort(tri);

side1 = tri(1,1);
side2 = tri(1,2);
side3 = tri(1,3);

if (side1+side2)>side3
    trueSide = true;
else 
    trueSide = false;
end
