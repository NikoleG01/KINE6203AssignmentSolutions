
function [sumOfTwo, differenceOfTwo, productOfTwo, maxNumOfTwo] = vals(num1,num2)
%vals: a function that takes 2 numbers as input and returns values for the sum,
%difference, product and max of the two numbers as outputs.

         sumOfTwo = num1 + num2;


         differenceOfTwo = num1 - num2;
         
         if(num1>=num2)
         num1-num2
         else
         num2-num1
         end

         productOfTwo = num1 * num2;

         maxNumOfTwo = max(num1,num2);
          
end 