for i = 1:8
    filename = strcat('Hitter',num2str(i));
    importdata(filename)
    disp(filename)
end