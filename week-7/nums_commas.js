// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Sarah Finken

// Pseudocode
/*
CREATE a function that takes an integer as an input and adds commas where appropriate and returns that number as a string

CREATE an array where every element in the array is a digit from our input integer

Starting from the last element, insert a comma after every three elements

JOIN the array with commas to CREATE a string

RETURN the string

*/
// Initial Solution

// var inputInteger = 61934671021212337;

// function separateComma(inputInteger) {
//   var inputNumberArray = inputInteger.toString().split("");
//   var arrayLength = inputNumberArray.length;
//   if (arrayLength < 4){
//     console.log(inputNumberArray);
//   }
//   else {
//   var index = -3;
//     for (var counter = arrayLength; counter >= 0; counter -= 4) {

//       inputNumberArray.splice(index, 0, ",");

//       index -= 4;
//     };
//     var outputString = inputNumberArray.join("");
//   };



// console.log(inputNumberArray);
//  console.log(outputString);
// };

// separateComma(inputInteger)

// Refactored Solution
var inputInteger = 987922222222;

function separateComma(inputInteger) {
  var inputNumberArray = inputInteger.toString().split("");
  //var arrayLength = inputNumberArray.length;
  if (inputNumberArray.length < 4){
    console.log(inputInteger);
  }
  else {
    var index = -3;
    for (var loopTimes = inputNumberArray.length / 3; loopTimes > 1; loopTimes--) {
      inputNumberArray.splice(index, 0, ",");
      index -= 4;
    };
    var outputString = inputNumberArray.join("");
    console.log(outputString);
  };
};

separateComma(inputInteger)



// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Approaching this problem from the perspective of Javascript required some rethinking of the problem as I am much less certain about the built-in functions of Javascript. It was an interesting exercise after learning that Javascript containtains apparently far fewer built-in functions than Ruby. This required a much more "granular" approach when writing the actual code as Ruby appears to handle this challenge using less code.

What did you learn about iterating over arrays in JavaScript?

I learned that when iterating over arrays in Javascript, it is preferable to use the for loop. In my working with Ruby, I used this loop rarely and was much more reliant on the "each" method and "while" loop. The construction of a loop is also different enough that it required a bit more fleshing out than the iteration I was used to.

What was different about solving this problem in JavaScript?

This problem was a bit different to solve in Javascript as it required the construction of iteration over an array. This required up to use a Javascript for loop - a form of iteration quite differently contstructed than the "for" loop in Ruby. Also, this challenge required a different method call in the form of "splice" whereas in Ruby I would be inclined to call insert on the array.

What built-in methods did you find to incorporate in your refactored solution?

While we struggled to refactor our solution in any significant way, we used splice to insert the commas in our original solution.

*/