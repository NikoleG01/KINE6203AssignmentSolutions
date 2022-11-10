function [dayWithHigherValue] = dayComparer(SubjectID,dayA,dayB)
%   dayComparer This function determines if the subjects had an increase in
%   strength by comparing strength data of different days 
%   Inputs: Subject ID = SubjectID's of subjects 
%           dayA & dayB = Comparing data for two different days 
%
%   Outputs: dayWithHigherValue = Seeing if there is an increase in
%   stregnth  from the first day to the second day and second day to the
%   third day


%   We are finding which days the subjects have higher isometric
%   strength values. This allows us to see improvement in stregnth from
%   day 1 to day 2 and day 2 to day 3 
dayWithHigherValue = find (dayB > dayA); 


end 