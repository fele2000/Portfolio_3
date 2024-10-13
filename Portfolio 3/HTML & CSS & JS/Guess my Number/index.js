'use strict';
// Defining variables, I use let since these are very much subject to change.
//
let secretNumber = Math.round(Math.random() * 20) + 1;
let score = 0;
let highscore = 0;

// Defining functions, in the global scope, that I found were used regularly when writing my code
const displayedMessage = function (message) {
    document.querySelector('.message').textContent = message;
};

const displayedSecretNumber = function (number) {
    document.querySelector('.number').textContent = number;
};

const displayedScore = function (score) {
    document.querySelector('.score').textContent = score;
};

// Defining the history of guesses in an array
const guessHistory = [];

// The function where most of the code is run, it only runs when a click is detected on the check button
document.querySelector('.check').addEventListener('click', function () {
    // A reusable and easy to remember variable for the guessed input
    const guess = Number(document.querySelector('.guess').value);

    // When there is no input or a non-number input
    if (!guess || typeof guess !== "number") {
        displayedMessage('Input is not a number');


        // When the guess is right
    } else if (guess > 20 || guess < 1){
        // Ternary Operator to tell the player when their number is either too high or too low outside the 1-20 range
        displayedMessage(guess > 20 ?
            'Input is too high, please type a number between 1 and 20':
            'Input is too low, please type a number between 1 and 20');

    } else if (guess === secretNumber) {
        displayedMessage('You Win');
        displayedSecretNumber(secretNumber);

        if (score < highscore) {
            highscore = score;
            document.querySelector('.highscore').textContent = highscore;
        }

        // When the guess is wrong
    } else if (guess !== secretNumber) {
        if (score < 20) {
            // Ternary operator to check whether the guess is too high or low within the 1-20 range, to guide the player
            // This is the self inserted part; ''Add your own feature''
            // Got inspired after looking up Ternary operators earlier in my code
            displayedMessage(guess < secretNumber ? 'Too low' : 'Too high');
            score++;
            displayedScore(score);

            // Add the wrong guess to the array and display it
            guessHistory.push(guess);
            // Added an element in the HTML to refer too for the guess history.
            // Not sure how much we are allowed to mess around in the CSS and HTML, so I kept it to a minimum
            // Therefore I did not bother with the visual part of the 'previous guesses' and just focused on functionality
            document.querySelector('#guess-history').textContent = guessHistory.join(', ')

            // How the code looked before I changed it for the ternary version
            // displayedMessage('Wrong number, try again..');
            // score++;
            // displayedScore(score);

        } else {
            displayedMessage('You lost');
            displayedScore(20);
        }
    }
});

document.querySelector('.again').addEventListener('click', function () {
    // Reset all values to default
    score = 0;
    displayedScore(score);
    secretNumber = Math.round(Math.random() * 20) + 1;
    document.querySelector('.guess').value = '';
    displayedSecretNumber('?')
    displayedMessage('Awaiting Guess...');

    // Remove all values from the array and the corresponding displayed values
    guessHistory.length = 0;
    document.querySelector('#guess-history').textContent = '';
});

