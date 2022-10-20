
function evenOrOdd = wooHah (num1, num2)
%wooHah: a function that takes 2 numbers as inputs and returns Woo if their sum is
%even and Hah if their sum is odd.
         evenOrOdd = num1 + num2
         if (mod(evenOrOdd,2)==0)
            evenOrOdd = 'Woo'
         else 
             evenOrOdd = 'Hah'
         end 
end 
