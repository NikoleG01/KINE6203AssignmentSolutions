
function moneyAmount = totalChange(numQuarters, numDimes, numNickles, numPennies)   
%totalChange: a function that takes in a number of quarters, dimes, nickels, and pennies
%as inputs and returns the total amount as output.
         
         moneyAmount = (numQuarters*.25) + (numDimes*.10) + (numNickles*.05) + (numPennies*.01)
end 