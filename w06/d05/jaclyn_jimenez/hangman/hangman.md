#The Hangman Game:

##GAME constructor contains all functions
- create WORDS object, ex: WORDS = [this, these, that, those]
- initiate game function - selects word from WORDS object at random, assigns it to secretWord variable
- secretWord.length is displayed on screen: _ _ _ _ 

###makeGuess function 

The player guesses one letter at a time, trying to figure out what the word is

- records keystroke, asigns to variable guessInput
- if guessInput is contained in secretWord, any instances of that letter are revealed
- _ H _ _
- show all guesses so they dont repeate themselves (show guessed array)
- if secretWord is revealed, player wins: if lettersRemaining === 0, 'you win'!

###Lose
- guessesRemaining = 8
- after each guess, guessesRemaining=-1 for each incorrect guess; else reveal that letter

- if guesses === 0, 'you lose'

To do:

Plan out your object model. What variables and functions will each object have? How will the different objects communicate with each other?


###LATER
Get the logic to work and make sure you have the game working in the console first before translating it over to update the DOM.
Translate your game over so it updates the DOM.
Once you get the game working:
Implement a "reset" button that will reset the game and choose a new word
Implement a "give up" button that will show the solution
Bonus:
Add a timer to log how long it takes to guess a word.
Are there ways to refactor your code to make it DRYer?
Validate the input so that only single letters are accepted as guesses (Hint: Look up regular expressions)
Change the input format so that there is no text field. You can get input by "listening" to the keyup event and figuring out which key was pressed.
Draw the hangman guy using CSS
Implement a "hint" button that will reveal one of the letters in the word