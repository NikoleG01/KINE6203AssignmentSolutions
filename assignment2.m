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

        doYouWantToPlayAgain = "Yes";
        while doYouWantToPlayAgain ~= "No" %this loop is for asking the user if they want to replay the game
            %if they select yes to play again, the board will pop up and execute what's below

            board = ["1","2","3"; "4","5","6"; "7","8","9"]


            for takeTurnsMoving = 1:9 %allows user and comp to take turns making a move until there is a winner

                if (mod(takeTurnsMoving,2)==1) %using mod so that user and computer can take turns moving by stating who's odd and even

                    nextMove = 0; %loop control variable for while loops

                    while nextMove ~= 10 %while loop for user move

                        userMove = input('Please enter your move (choose 1-9 to place your move)', 's')
                        %asking the user to input their move, anything other than 1-9 is not accepted

                        %"X" will be placed on a spot the user choses to place
                        %their move
                        %will not allow user to place an "X" on a spot that is already taken
                        if userMove == '1' && board(1,1) == '1'
                            board(1,1) = "X"
                            nextMove = 10;
                        elseif userMove == '2' && board(1,2) == '2'
                            board(1,2) = "X"
                            nextMove = 10;
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
                        else %anything other than 1-9 will not be accepted as well as making the same move
                            %will then ask user to enter a correct input
                            fprintf('Invalid input, chose 1-9 or do not chose the same move\n')
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
                        endGame = 7
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

                    if winner == 2
                        fprintf("Player Wins! Great Job!\n");
                        %this displays in command window if user wins (winner=2)
                    break
                    end

                  %player and computer tie 

                    if board(1,1) ~= "1" && board(1,2) ~= "2" && board(1,3) ~= "3" && board(2,1) ~= "4" && board(2,2) ~= "5" && board(2,3) ~= "6" && board(3,1) ~= "7" && board(3,2) ~= "8" && board(3,3) ~= "9"
                        winner = 4;
                        endGame = 7;
                    end
                                     
                   if winner == 4
                        fprintf("Player and Computer Tie!\n")
                        %this displays in command window if board is filled up and there are no
                        %winners (winner=4)
                   end

                else %computer will make a random generated move
                    fprintf('Computers turn to pick move')

                    while nextMove ~= 20 %while loop for computer move

                        computerMove = randi([1 9]); %radomizing a computer generated move

                        %will not allow computer to place "O" in a spot that is
                        %already taken
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
                    end

                    if winner == 3
                        fprintf("Computer Wins!\n");
                        %this displays in command window if computer wins (winner=3)
             
                    end

                    if endGame == 7 %will exit out of game after a user/computer win or tie
                        break
                    end
                end
            end

%asking the user if they want to play again. If yes, the game will
%restart and jump back to the top loop(doYouWantToPlayAgain). If no, will exit out of the game.

        doYouWantToPlayAgain = questdlg('Do you want to play again? (Yes or No)');
        switch doYouWantToPlayAgain
        case 'No'
            disp([doYouWantToPlayAgain '***Game Over***']);
        case 'Yes'
            clear board %clearing the board
            board = ["1","2","3"; "4","5","6"; "7","8","9"]
        end
end
end
