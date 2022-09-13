%Nikole Galman 

%Due Date: 10/6/2022

%This is my Tic Tac Toe Game :) 

%Welcome message and a prompt asking if the user wants to play 
% figure out how not to have board pop up if they say choose no 

uiwait(msgbox('Welcome to Tic Tac Toe'))

answer = questdlg('Do you want to play? Yes or No');
switch answer
    case 'Yes'
        disp([answer ' Game on!']);
        game = 1;
    case 'No'
        disp([answer ' Okay, Bye!.']);
        game = 0;
end




