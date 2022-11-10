function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender)
%   genderIsoCalc This function determines the average of individual male and female participant isometric
%   stregnth values across all 3 days of lifting and the overall average
%   isometric stregnth value for male and female group
%   Inputs: Day 1, Day 2 and Day 3 of isok data 
%           Gender (Male or Female) in isok data spreadsheet 
%   Outputs: maleIsoIndMeans & femaleIsoIndMeans = individual mean
%            isometric stregnth for male and female across 3 days 
%            maleGroupIsoMean & femaleGroupIsoMean = single mean value for 
%            each male and female group (mean of subject means)


%   Since the male and female subbjects are not in groups and randomized in
%   the spreadhsheet, we have to sort the males and females first before
%   analyzing their data
maleIsokData = Gender == 'M';
femaleIsokData = Gender == 'F';

%   Calculating the average of individual male and female participant isometric
%   stregnth values across all 3 days of lifting 
maleIsoIndMeans = (Day1(maleIsokData) + Day2(maleIsokData) + Day3(maleIsokData))/3;
femaleIsoIndMeans = (Day1(femaleIsokData) + Day2(femaleIsokData) + Day3(femaleIsokData))/3;

%   Calculating the the overall average isometric stregnth value for the male and female group
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

end

