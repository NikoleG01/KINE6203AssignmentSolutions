%Nikole Galman 
%Assignment 4 :)

%   calling the importfile function so that isok data can be loaded into our
%   workspace and we can further analyze it
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv')

%   calling the genderIscoCalc function so that we can determine the average of 
%   individual male and female participant isometric stregnth values across 
%   all 3 days of lifting AND the overall average isometric stregnth value 
%   for the male and female group
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender)

%   calling the dayComparer function to determine which subjects had an increase in
%   strength by comparing strength data of different days. In this case, we
%   are using the same dayComparer function to campare day 1 to day 2 AND
%   day 2 to day 3
[day1toDay2] = dayComparer(SubjectID, Day1, Day2);
[day2toDay3] = dayComparer(SubjectID, Day2, Day3); 

%   normalizing isok data 
%   starting off with averaging weights of the participants and then averaging isok stregnth
%   of the participants for day 1, day 2, and day 3
averageWeight = mean(Weight); 
day1Average = mean(Day1);
day2Average = mean(Day2);
day3Average = mean(Day3);
%   weight normalizing isokinetic data for day 1, day 2, and day 3 
normDay1mean = day1Average/averageWeight;
normDay2mean = day2Average/averageWeight;
normDay3mean = day3Average/averageWeight;

%   setting the table to a 13x1 matrix 
femaleIsoIndMeans(13,1) = NaN;
maleGroupIsoMean(13,1) = NaN; 
femaleGroupIsoMean(13,1) = NaN; 
day1toDay2(13,1) = NaN; 
day2toDay3(13,1) = NaN;
normDay1mean(13,1) = NaN; 
normDay2mean(13,1) = NaN;
normDay3mean(13,1) = NaN; 

%   this then creates a table that includes the outputs and variables 
%   that we want 
dataSheetResults = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean)

%   lastly, this stores the dataSheetResults table in a file called iso_results.csv
writetable(dataSheetResults,'iso_results.csv') 


