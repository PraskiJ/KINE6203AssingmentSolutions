function [trueSide] = triangle(tri)

% Write a function that accepts a single 3-element array (e.g. [3 4 5]), and 
% returns a logical value (0 or 1) indicating if the 3 elements of the array 
% represent the sides of a valid triangle.
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
