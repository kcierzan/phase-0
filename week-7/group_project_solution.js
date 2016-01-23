/*

Project 1
-Input: array of numbers
-Output: the sum of the numbers in array
-Steps:
  Define a function that accepts an array as arg
  Create a variable = zero
  Iterate over the array, += each value in the array to the variable
  Return the variable
*/
// ----------JAVASCRIPT - PROJECT 1 ------------------------

function sumArrayElements(inputArray) {
  var arraySumNumber = 0
  for (var i=0; i < inputArray.length; i++){
    arraySumNumber += inputArray[i];
  };
  return arraySumNumber;
};


/*
Project 2
-Input: array of numbers
-Output: mean of the numbers in array
-Steps:
  Define a function that accepts an array as arg
  Create a variable = zero
  Iterate over the array, += each value in the array to the variable
  Divide the variable by the length of the array and return the answer
*/
// ----------JAVASCRIPT - PROJECT 2 ----------------------

function meanOfElements(inputArray) {
  var arraySumNumber = 0
  for (var i=0; i < inputArray.length; i++) {
    arraySumNumber += inputArray[i];
  };
  return arraySumNumber / inputArray.length;
};

/*Project 3
-Input: array of numbers
-Output: median(middle value in sorted list) of the list of numbers
  Define a function that accepts an array as arg
  IF array.length is even
    sort the array
    find the values at the middle 2 indexes
    return whatever number is inbetween those two values
  ELSE (the array.length is odd)
    sort the array
    return the value at the middle index
*/
// ----------JAVASCRIPT - PROJECT 3 ----------------------
function medianOfElements(inputArray) {
  if (inputArray.length % 2 == 0) {
    var highMiddle = inputArray[(inputArray.length / 2)];
    var lowMiddle = inputArray[(inputArray.length / 2) - 1];
    return (highMiddle + lowMiddle) / 2;
  }
  else {
    return inputArray[Math.floor(inputArray.length / 2)];
};