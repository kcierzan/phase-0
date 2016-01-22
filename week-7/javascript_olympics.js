 // JavaScript Olympics

// I paired with: Jeremy Oltean on this challenge.

// This challenge took me [2.5] hours.


// Warm Up



// __________________________________________
// Write your code below.

var athletes = [{name: "Bode Miller", event: "skiing"}, {name: "Michael Phelps", event: "swimming"}]

function addWin(array) {
  for (var i = 0; i < array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event + " event.";
    console.log(array[i].win);
  };
};


addWin(athletes);

// Jumble your words

function jumble(string) {
  var stringsplit = string.split("");
  var reversed = stringsplit.reverse();
  var joinstring = reversed.join("");
  return joinstring;
};

console.log(jumble("Hello"))

// 2,4,6,8

var mixedArray = [1, 2, 3, 4, 5, 6, 10, 13, 100];

function evenFilter(array) {
  function isEven(number) {
    return number % 2 === 0;
  };
  var evenArray = array.filter(isEven);
  console.log(evenArray);
};

evenFilter(mixedArray);

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

I solidified my undertanding of arrays and objects in Javascript during this challenge. Given the syntax differences between the two and their different properties, I was somewhat confused about when to use an object versus when to use an array. Once I realized that functionally and syntactically speaking, object in Javascript act a bit like hashes in Ruby but allow one to store methods as values, I began to think through the challenges much more easily.

What are constructor functions?

Constructor functions are functions that, when called, create a new instance of an object with properties supplied as parameters when calling the function. These properties can store values and methods.

How are constructors different from Ruby classes (in your research)?

Constructors are different from Ruby classes because in Ruby, there is very specific syntax for defining a class which differs from defining the behavior of an instance of that class. In Javascript, any function can be a constructor and there is no special object for creating new instances of a Class/Object.


*/