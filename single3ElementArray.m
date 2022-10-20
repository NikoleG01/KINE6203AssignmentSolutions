
%a valid trianlge, the sum of the lengths of the 2 shorter sides are 
%greater than the lenth of the longest side 

function logicalValue = single3ElementArray(a) 
%single3ElementArray: a function that accepts a single 3-element array (e.g. [3 4 5]), and returns a
%logical value (0 or 1) indicating if the 3 elements of the array represent the sides
%of a valid triangle.

         sort(a)

         side1 = a(1,1)
         side2 = a(1,2)
         side3 = a(1,3)

         if a(1,1) + a(1,2) > a(1,3)
            logicalValue = true 

         else 
             logicalValue = false  

         end 
        
         
  
end        