function [dayAtoDayB] = dayComparer(SubjectID,DayA,DayB)
% Takes the subject ids and two days as inputs and returns a matrix with the subject 
% IDs of the subjects who had an increase from the first day to the
% second day (it should also work for the second day to the third day). 

for i = 1:length(SubjectID)

    if (DayB(i) > DayA(i))
      dayAtoDayB(i) = SubjectID(i);
      dayAtoDayB = dayAtoDayB';
      SubjectID = SubjectID';
%Identifies if the second day that we look at has an increase from the 
% first day and will display the SubjectID of the subjects that had an 
% increase on the second day
    
    end

end