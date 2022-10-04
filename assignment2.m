%Nikole Galman
%Due date - Oct 6 2022
%This is my tic tac toe game :)

%welcome message popup

uiwait(msgbox('Welcome to Tic Tac Toe'))

%asking the user if they want to play by asking yes or no
%ideally yes or no (if yes, board is shown. If no, exits out of game)

doYouWantToPlay = questdlg('Do you want to play? (Yes or No)');
switch doYouWantToPlay
    case 'No'
        disp([doYouWantToPlay '.Okay, Bye!']);
    case 'Yes'

        %if the user selects yes, gameboard is shown in command window and the game
        %starts

        board = ["1","2","3"; "4","5","6"; "7","8","9"]
       

doYouWantToPlayAgain = "Yes"
while doYouWantToPlayAgain ~= "No" 
       
        for takeTurnsMoving = 1:5 %allows user and comp to take turns making a move until there is a winner

            if (mod(takeTurnsMoving,2)==1)
                
                nextMove = 0; %loop control variable for while loops

                while nextMove ~= 10
        %asking the user to input their move, anything other than 1-9 is not
        %accepted
                    userMove = input('Please enter your move (choose 1-9 to place your move)', 's')

                    if userMove == '1' && board(1,1) == '1'
                        board(1,1) = "X"
                        nextMove = 10;
                    elseif userMove == '2' && board(1,2) == '2'
                        board(1,2) = "X"
                        nextmove = 10
                    elseif userMove == '3' && board(1,3) == '3'
                        board(1,3) = "X"
                        nextMove = 10;
                    elseif userMove == '4' && board(2,1) == '4'
                        board(2,1) = "X"
                        nextMove = 10;
                    elseif userMove == '5' && board(2,2) == '5'
                        board(2,2) = "X"
                        nextMove = 10;
                    elseif userMove == '6' && board(2,3) == '6'
                        board(2,3) = "X"
                        nextMove = 10;
                    elseif userMove == '7' && board(3,1) == '7'
                        board(3,1) = "X"
                        nextMove = 10;
                    elseif userMove == '8' && board(3,2) == '8'
                        board(3,2) = "X"
                        nextMove = 10;
                    elseif userMove == '9'&& board(3,3) == '9'
                        board(3,3) = "X"
                        nextMove = 10;
                    else
                        fprintf('Invalid input, chose 1-9 or do not chose the same move\n')
                    end
                end
                

                %computer random generated move
            else
                fprintf('Computers turn to pick move')

                while nextMove ~= 20

                    computerMove = randi([1 9]); %radomizing a computer generated move
                    if computerMove == 1 && board(1,1) == '1'
                        board(1,1) = "O"
                        nextMove = 20;
                    elseif computerMove == 2 && board(1,2) == '2'
                        board(1,2) = "O"
                        nextMove = 20;
                    elseif computerMove == 3 && board(1,3) == '3'
                        board(1,3) = "O"
                        nextMove = 20;
                    elseif computerMove == 4 && board(2,1) == '4'
                        board(2,1) = "O"
                        nextMove = 20;
                    elseif computerMove == 5 && board(2,2) == '5'
                        board(2,2) = "O"
                        nextMove = 20;
                    elseif computerMove == 6 && board(2,3) == '6'
                        board(2,3) = "O"
                        nextMove = 20;
                    elseif computerMove == 7 && board(3,1) == '7'
                        board(3,1) = "O"
                        nextMove = 20;
                    elseif computerMove == 8 && board(3,2) == '8'
                        board(3,2) = "O"
                        nextMove = 20;
                    elseif computerMove == 9 && board(3,3) == '9'
                        board(3,3) = "O"
                        nextMove = 20;
                    end

                end 
%user wins
winner = 0;
endGame = 0;

    if board(1,1) == "X" && board (1,2) == "X" && board(1,3) == "X"
        winner = 2;
        endGame = 7;
    elseif board(2,1) == "X" && board (2,2) == "X" && board(2,3) == "X"
        winner = 2;
        endGame = 7;
    elseif board(3,1) == "X" && board (3,2) == "X" && board(3,3) == "X"
        winner = 2;
        endGame = 7;
    elseif board(1,1) == "X" && board (2,1) == "X" && board(3,1) == "X"
        winner = 2;
        endGame = 7;
    elseif board(1,2) == "X" && board (2,2) == "X" && board(3,2) == "X" 
        winner = 2;
        endGame = 7;
    elseif board(1,3) == "X" && board (2,3) == "X" && board(3,3) == "X"
        winner = 2;
        endGame = 7;
    elseif board(1,1) == "X" && board (2,2) == "X" && board(3,3) == "X"
        winner = 2;
        endGame = 7;
    elseif board(1,3) == "X" && board (2,2) == "X" && board(3,1) == "X"
        winner = 2;
        endGame = 7;
    end
    %computer wins
    
    if board(1,1) == "O" && board (1,2) == "O" && board(1,3) == "O"
        winner = 3;
        endGame = 7;
    elseif board(2,1) == "O" && board (2,2) == "O" && board(2,3) == "O"
        winner = 3;
        endGame = 7;
    elseif board(3,1) == "O" && board (3,2) == "O" && board(3,3) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,1) == "O" && board (2,1) == "O" && board(3,1) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,2) == "O" && board (2,2) == "O" && board(3,2) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,3) == "O" && board (2,3) == "O" && board(3,3) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,1) == "O" && board (2,2) == "O" && board(3,3) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,3) == "O" && board (2,2) == "O" && board(3,1) == "O"
        winner = 3;
        endGame = 7;
    elseif board(1,1) ~= "1" && board(1,2) ~= "2" && board(1,3) ~= "3" && board(2,1) ~= "4" && board(2,2) ~= "5" && board(2,3) ~= "6" && board(3,1) ~= "7" && board(3,2) ~= "8" && board(3,3) ~= "9"  
        winner = 4;
        endGame = 7;
    end

    if winner == 2
        fprintf("Player Wins! Great Job!\n");
    elseif winner == 3
        fprintf("Computer Wins!\n");
    elseif winner == 4
        fprintf("Player and Computer Tie!\n")
    end

    if endGame == 7
        break
    end
            end
        end

        doYouWantToPlayAgain = questdlg('Do you want to play again? (Yes or No)');
        switch doYouWantToPlayAgain
        case 'No'
            disp([doYouWantToPlayAgain '***Game Over***']);
        case 'Yes'
            board = ["1","2","3"; "4","5","6"; "7","8","9"]
        end
end 
end 
