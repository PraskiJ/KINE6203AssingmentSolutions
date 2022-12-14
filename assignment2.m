%This script plays TicTacToe
%Author: Jeremy Praski
disp('Welcome to TicTacToe')
%Ask user if they want to play
doYouWantToPlay =input("Do you want to play? (Please type yes or no)","s");
while(doYouWantToPlay ~= "yes" && doYouWantToPlay ~= "no")
    disp("Please enter yes or no")
    doYouWantToPlay = input("Do you want to play? (Please type yes or no)","s");
end
while(doYouWantToPlay =="yes")

    %Play TicTacToe
    board = ["1","2","3";"4","5","6";"7","8","9"];
  %Display TicTacToe board
  disp(board)
  %For loop to continue game after user and CPU have each made first move
for moves = 1:9

       disp('Enter number 1 through 9 where you would like to move');
       %Display will show player to enter number 1 through 9 to make their
       %move on the board
    userMove = input("Where do you want to move on the board?");
    %User will input number 1 through 9 on number pad to display their move
    %While loop will show displays and input for user to continue playing

  %checkForLegalMove will check if a spot on the board has been taken by
  %the user or CPU, if the spot is taken a message will display a message
  %teliing the user to slect a number that has not been used to play
   checkForLegalMove = true;
   while (checkForLegalMove)
  
        if (userMove == 9 && board (3,3) == '9')
                board(3,3) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 8 && board (3,2) == '8')
                board(3,2) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 7 && board (3,1) == '7')
                board(3,1) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 6 && board (2,3) == '6')
                board(2,3) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 5 && board (2,2) == '5')
                board(2,2) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 4 && board (2,1) == '4')
                board(2,1) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 3 && board (1,3) == '3')
                board(1,3) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove == 2 && board (1,2) == '2')
                board(1,2) = "X";
                checkForLegalMove = false;
                disp(board)
        elseif (userMove ==  1 && board (1,1) == '1')
                board(1,1) = "X";
                checkForLegalMove = false;
                disp(board)
        else
            userMove=input('Choose a number 1 through 9 that has not been used to play');
         
        end
    
   end
    %Horizontal win for X
    %Use break in between each elseif to stop game if User wins
   if (board(1,1) == "X" && board(1,1)== board(1,2) && board(1,1) == board(1,3))
    disp('User wins!! Congratulations!!');
    break;
    elseif (board(2,1) == "X" && board(2,1) ==board(2,2) && board(2,1) == board(2,3))
    disp('User wins!! Congratulations!!');
    break;
    elseif (board(3,1) == "X" && board(3,1) ==board(3,2) && board(3,1) == board(3,3))
    disp('User Wins!! Congratulations!!');
    break;
    %Vertical win for X
    elseif (board(1,1) == "X" && board(1,1) == board(2,1) && board(1,1) == board(3,1)) 
        disp('User wins!! Congratulations!!');
        break;
    elseif (board(1,2) == "X" && board(1,2) == board(2,2) && board(1,2) == board(3,2)) 
        disp('User wins!! Congratulations!!');
        break;
    elseif (board(1,3) == "X" && board(1,3) == board(2,3) && board(1,3) == board(3,3)) 
        disp('User wins!! Congratulations!!');
        break;
    %Diagonal win for X
    elseif (board(1,1) == "X" && board(1,1) == board(2,2) && board(1,1) == board(3,3))
        disp('User wins!! Congratulations!!');
        break;
    elseif (board(1,3) == "X" && board(1,3) == board(2,2) && board(1,3) == board(3,1))
        disp('User wins!! Congratulations!!');
        break; 
    elseif (board(1,1) ~= '1' && board (1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= '4' && board(2,2) ~= '5' && board(2,3) ~= '6' && board(3,1) ~= '7' && board(3,2) ~= '8' && board(3,3) ~='9')
        disp('Tie!!')
        break; 
   end 

    %CPU makes move, randomly attaining a value of 10 to 18 and places "O" in
    %that spot. checkForLegalMove will check if a spot has been taken, and
    %the CPU will not be able to put an "O" in that location
    checkForLegalMove = true;
    while (checkForLegalMove)
            CPUMove = randi([10 18]);
        switch CPUMove
            case 10
                if(board(1,1)~='X' && board(1,1)~= 'O')
                board (1,1) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 11
                if(board(1,2)~='X' && board(1,2)~= 'O')
                board(1,2) = "O";
                disp(board)
                checkForLegalMove = false;
                end 
            case 12
                if(board(1,3)~='X' && board(1,3)~= 'O')
                board(1,3) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 13
                if(board(2,1)~='X' && board(2,1)~= 'O')
                board(2,1) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 14
                if(board(2,2)~='X' && board(2,2)~= 'O')
                board(2,2) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 15
                if(board(2,3)~='X' && board(2,3)~= 'O')
                board(2,3) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 16
                if(board(3,1)~='X' && board(3,1)~= 'O')
                board(3,1) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 17
                if(board(3,2)~='X' && board(3,2)~= 'O')
                board(3,2) = "O";
                disp(board)
                checkForLegalMove = false;
                end
            case 18
                if(board(3,3)~='X' && board(3,3)~= 'O')
                board(3,3) = "O";
                disp(board)
                checkForLegalMove = false;
                end
        end
    end
  
   
% Horizontal win for O
% Use break in between each elseif to stop game if CPU wins
   if (board(1,1) == "O" && board(1,1)== board(1,2) && board(1,1) == board(1,3))
    disp('CPU wins!!');
    break;
    elseif (board(2,1) == "O" && board(2,1) ==board(2,2) && board(2,1) == board(2,3))
    disp('CPU wins!!');
    break;
    elseif (board(3,1) == "O" && board(3,1) ==board(3,2) && board(3,1) == board(3,3))
    disp('CPU Wins!!');
    break;
    %Vertical win for O
    elseif (board(1,1) == "O" && board(1,1) == board(2,1) && board(1,1) == board(3,1)) 
        disp('CPU wins!!');
        break;
    elseif (board(1,2) == "O" && board(1,2) == board(2,2) && board(1,2) == board(3,2)) 
        disp('CPU wins!!');
        break;
    elseif (board(1,3) == "O" && board(1,3) == board(2,3) && board(1,3) == board(3,3)) 
        disp('CPU wins!!');
        break;
    %Diagonal win for O
    elseif (board(1,1) == "O" && board(1,1) == board(2,2) && board(1,1) == board(3,3))
        disp('CPU wins!!');
        break;
    elseif (board(1,3) == "O" && board(1,3) == board(2,2) && board(1,3) == board(3,1))
        disp('CPU wins!!');
        break; 
   end 


% end move loop 
end
%Start loop for user responce to "Do you want to play again?"
doYouWantToPlay = input("Do you want to play again? (Please type yes or no)","s");
while(doYouWantToPlay ~= "yes" && doYouWantToPlay ~= "no")
    disp("Please enter yes or no")
    doYouWantToPlay = input("Do you want to play again? (Please type yes or no)","s");
end
end
%If user does not want to play, display "Have a nice day" and game can't be
% played

    %Tell user to Have a nice day
disp("Have a nice day")

