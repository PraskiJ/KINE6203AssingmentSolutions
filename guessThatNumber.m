function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:Jeremy Praski
%
%         DUE: November 17
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced  
%Bug Found: Found because with || this while loop was the only thing that
% would register. Change || to &&, || will send the game to this while loop 
%instead of continuing to play the game,|| won't interpret the level chosen
%&& will send the game to the 'if' level conditions so the user can select 
%their level of play, && goes past this loop into the game unless there is
%an invalid entry.
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner 

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; %Bug Found: Found by running the code and getting
% an error. Capitalize H, because lowercase advancedhighest
% won't register anything because when previously referenced, advancedHighest 
% uses a capital H
end

% randomly select secret number between 1 and highest for level of play

secretNumber =  floor(rand() * highest); %Bug Found: Found by playing
% and finding only (10, 100, and 1000 could be the correct number.
% Got  rid of (+1), because every number I entered was always too low or 
% too high high until i got to either 10, 100, or 1000. (10, 100, or 1000 
% had to be the guess and answer)

% initialize number of guesses and User_guess

numOfTries = 0; %Bug Found: Found by correcting other code and using 
% beginner level and finding correct number of tries. Change numOfTries 
% from =1 to =0, when numOfTries = 1, 1 try will be added to the actual 
% number of tries it took to find the correct number. When at 0, the 
% correct number of tries will be displayed.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %Bug Found: Found because I was 
% not able to select highest numbers (10,100,1000) as a guess.
% Removed equal sign, I was not able to guess the highest number 
% 10, 100, or 1000. Want user input to be between 1 and highest, so integer
% must be equal to having the user guess be set to less than 1 so the guess 
% can be 1 and having userGuess set to greater than the highest so the
% number can be the highest number in the level.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %Bug Found: Found by looking at the if statement
% and seeing the fprintf says "Sorry, number too low", so the user guess 
% should be less than the sectretNumber. Flip > to < so user guess is less than 
% sectret number. If the guess is too low, it should reflect as so,
% otherwise the "is too low" would only show if the guess was higher which
% wouldn't be correct
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);%Bug Found:Found because you want the number of
% tries to be shown after the secret number is guessed but it won't show 
% unless numOfTries is there. Added numOfTries as second variable to register 
% the number of tries, without numOfTries the number of tries it took to 
% find the secret number will never be displayed. 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

% end of game
end
% Bug Found: I would get an error when I first tried running this script. 
% Needed an end to while loop. 