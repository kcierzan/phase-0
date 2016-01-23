// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myNumber = 7
myNumber += 2


function foodPraiser() {
  usersFavoriteFood = prompt("Hey, What is your favorite food?");
  console.log("No way! " + usersFavoriteFood + " is my favorite food too!" );
};



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle

function triangleLooper() {
  var brick = "#"
  while (brick.length <= 7) {
    console.log(brick);
    brick += "#";
  };
};

triangleLooper();


// Functions

// Complete the `minimum` exercise.
function min(x, y) {
  if (x > y) {
    return y;
  };
  else {
    return x;
  };
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name:          "Kyle"
  age:            26
  favoriteFood1: "Chinese Takeout"
  favoriteFood2: "Cheeseburgers"
  favoriteFood3: "Chimichangas"
  quirk:         "I have a collection of Dr. Steve Brule gifs for every occassion"
};