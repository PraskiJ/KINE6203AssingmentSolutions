clear all;

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');


[maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

[day1toDay2] = dayComparer(SubjectID,Day1,Day2);
[day2toDay3] = dayComparer(SubjectID,Day2,Day3);

% Weight normalized for isokinetic data and calculates the group means for 
% each day. 

normDay1 = Day1./Weight;
normDay2 = Day2./Weight;
normDay3 = Day3./Weight;
normDay1mean =  mean(normDay1);
normDay2mean =  mean(normDay2);
normDay3mean =  mean(normDay3); 

maleGroupIsoMean(25,1) = 0;
femaleGroupIsoMean(25,1) = 0;
maleIsoIndMeans(25,1) = 0;
femaleIsoIndMeans(25,1) = 0;
day1toDay2(25,1) = 0;
day2toDay3(25,1) = 0;
normDay1mean(25,1) = 0;
normDay2mean(25,1) = 0;
normDay3mean(25,1) = 0;

m = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);
writetable(m,'iso_results.csv');

