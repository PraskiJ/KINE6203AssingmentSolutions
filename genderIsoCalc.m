function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
% The first set of outputs (one for males and one for females) will 
% return a matrix with individual mean isometric strength values across 
% all 3 days of lifting for the appropriate group. The second set of 
% outputs will return the single mean value for each group (mean of 
% subject means).
for i = 1:length(Gender)

    if  Gender(i) == ('M') 
        maleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3;
%('M') calculates the mean of male individual means for isokinetic strength
%values
    elseif  Gender(i) == ('F') 
        femaleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3;
%('F') calculates the mean of female individual means for isokinetic strength
%values
    end
end

maleIsoIndMeans = maleIsoIndMeans';
%Transposes maleIsoIndMeans from rows to columns
maleGroupIsoMean = mean(nonzeros(maleIsoIndMeans));
%Takes out zeros from maleIsoIndMeans to accurately calculate
%maleGroupIsoMean
femaleGroupIsoMean = mean(nonzeros(femaleIsoIndMeans));
%Takes out zeros from femaleIsoIndMeans to accurately calculate
%femaleGroupIsoMeans
femaleIsoIndMeans = femaleIsoIndMeans';
%Transposes femaleIsoIndMenas from rows to columns
%  IsoIndMeans returns a matrix with individual isometric mean strength values
%  for all 3 days of lifting for males and females (M/F, Day 1-3)

% GroupIsoMean will return the single mean value for each group (mean of
% complete set of maleIsoIndMeans and complete set of femaleIsoIndMeans)

end