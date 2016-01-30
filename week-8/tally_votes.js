// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//Iterate through votes variable and add properties within the office properties of votecount that correspond to the number of votes each student receives.
//FOR every occurence of a name inside votes, add one to the votes tally for that name inside voteCount.
//For every office in voteCount, take the student with the highest number of votes in that category and assign the student's name to the office within officers.


// __________________________________________
// Initial Solution

// for (var student in votes ) {
//   for (var office in votes[student] ) {
//     if ( voteCount[office].hasOwnProperty(votes[student][office]) ) {
//       voteCount[office][votes[student][office]] += 1;
//     } else {
//       voteCount[office][votes[student][office]] = 1;
//     }
//   }
// }

// for (var office in voteCount) {
//   var arr = Object.keys(voteCount[office]).sort(function(a,b) {
//     return voteCount[office][b] - voteCount[office][a];
//   });
//   officers[office] = arr[0];
// }


// __________________________________________
// Refactored Solution

for (var student in votes ) {
  for (var office in votes[student] ) {
    var job = voteCount[office];
    var candidate = votes[student][office];
    if (job.hasOwnProperty(candidate)) {
      job[candidate] += 1;
    } else {
      job[candidate] = 1;
    }
  }
}

for (var office in voteCount) {
  var listOfCandidates = voteCount[office];
  var rankedCandidates = Object.keys(listOfCandidates).sort(function(a,b){
    return listOfCandidates[b] - listOfCandidates[a];
  });
  var winner = rankedCandidates[0];
  officers[office] = winner;
}





// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

I learned that using nested for...in loops is an essential component of iterating over nested objects in Javascript, this combined with bracket notation when accessing properties within nested objects was essential to our successful iteration in this challenge.

Were you able to find useful methods to help you with this?

We were able to employ the .keys and .sort functions which helped greatly in our solution for determining the winning candidates. The accessing of "max" values within an array in Ruby is exceedingly easy however it required a bit more thought and some intermediate steps in Javascript.

What concepts were solidified in the process of working through this challenge?

I feel much more confident in accessing nested data structures in Javascript after this challenge. Iterating over these structures proved somewhat challenging in that defining descriptive yet succinct variables was difficult and accessing values using confusing variables made for a confusing challenge. I ended up largely ignoring many of the variable names in an effort to determine which values I was actually accessing.






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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)