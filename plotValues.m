%a = [1:10]
%b = [2:11]

function plotValues(a,b) 
%plotValues:  a function that takes two vectors and plots their values on a figure. This
%function also sets up figures with titles and axis names for the chart.
         plot(a,b)
         title('Chart of two vectors')
         xlabel('awesome x axis') 
         ylabel('awesome y axis') 
end 


