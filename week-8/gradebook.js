
/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:] Kyle Cierzan, Ian Kinner
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

for (var i in students) {
  gradebook[students[i]] = {};
}

for (var i in students) {
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function (name, score) {
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function (name) {
  return average(gradebook[name].testScores);
}

function average(array) {
  var sum = 0;
  for (var i=0; i < array.length; i++) {
    sum += array[i];
  }
  return sum / array.length;

}


// __________________________________________
// Refactored Solution
// We reviewed the built-in Javascript methods and searched for ways to consolidate variables and function but were unable to find any that would appreciably improve the efficiency or readability of our code.







// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?

I learned that not only is it possible to add functions as properties of objects, but to add functions to objects that refer to functions defined outside of the object. This is in keeping with the scoping conventions of Javascript but until now I suppose I didn't realize it applied to functions as well as variables.

How did you iterate over nested arrays in JavaScript?

We defined a function that used a for loop that iterated over every element in the array and returned an average. We then called that function within another function, providing parameters that would control which object/proptery was being averaged.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We did not incorporate any truly new methods but I believe this is the first time I used the push function to append an integer into an existing array. I was familiar with this method in Ruby and its use here is very similar.









// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

