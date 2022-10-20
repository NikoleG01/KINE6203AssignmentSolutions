
function [lengthOfString, firstCharacter, lastCharacter] = StringVal(words)
%StringVal a function that takes a string value as input and returns the length of the 
%string and the first and last character as outputs.

lengthOfString = strlength (words);

firstCharacter = words (1,1);

lastCharacter = words (1, lengthOfString);

disp(lengthOfString)
disp(firstCharacter)
disp(lastCharacter)

end