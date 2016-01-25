 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Navigate the explorer through the mayan tomb and claim the idol.
// Goals: Find your way to the end of the catacomb while avoid booby-traps
// Characters:
// Illinois James: Community College Professor/Explorer/Protagonist
// Olmec: Antisocial Mayan Statue/Deity/Antagonist
// Objects: Player, Olmec, Idol
// Functions: moveUp, moveBack, moveLeft, moveRight, checkMap, whipGrab, roll

// Pseudocode
// Declare a 'player' object with properties position, checkMap, whipGrab and escaped.
// Declare a 'tomb' object with properties hallway vertical and hallway horizontal
// Declare a pendulum variable with property swing position
// Declare an Idol object with the property stolen
// Move the player
// check if the player is at the idol
// check if the player is at the pendulum
//

// Initial Code

var player = {
  name:  "Illinois James",
  job: "Community College Professor/Explorer/Whip Enthusiast",
  posX:  0,
  posY: 0,

  checkMap : function() {
    console.log("You are " + player.posY + " steps into the tomb and " + player.posX + " steps past the bend.");
  },

  move : function(direction) {
    if (direction === "forward") {
      player.posY += 1;

    }
    else if (direction === "backward" && player.posY === 0) {
      console.log("Running away eh?");
    }
    else if (direction === "backward") {
      player.posY -= 1;
    }
    else if (direction === "left" || direction === "right" && player.posY !== 5) {
      console.log("You walked into a wall. Impressive.");
    }
    else if (direction === "right") {
      player.posX += 1;
    }
    else {
      console.log("That is not a valid direction.");
    }
//     // After every player movement, check to see if they were killed by the pendulum.
    if (player.posY === 5 && player.posX === 3) {
      if  (Math.random() > 0.5) {
        console.log("You were decapitated by the swinging Pendulum of Doom. Your fedora is ruined. You respawn at the start of the tomb. Nifty!");
        player.posY = 0;
        player.posX = 0;
      }
      else {
        console.log("You got lucky and walked right through the Pendulum of Doom unharmed!");
      }
    }

//     After every movement, check to see if they are 1 step before the pendulum, if they are, give an opportunity to roll
    if (player.posY === 5 && player.posX == 2 ) {
      console.log("You are right in front of the Pendulum of Doom. Now might be a good time to call that roll function...");
    }
    if (player.posY === 5 && player.posX === 4) {
      console.log("Olmec loves your fedora and wants to borrow it. Don't bring up the fact that he doesn't really have a head. Its a sensitive subject. If you wish to appease him, call the appease function with a 'yes' or 'no' parameter. Or you could just try and grab the idol with your whip...");
    }
  },




  roll : function(spacesToRoll) {
    player.posX += spacesToRoll;
  },

 whipGrab : function() {
    if (player.posY === 5 && player.posX > 3) {
      idol.stolen = true;
      console.log("You have stolen the idol!");
    }
    else {
      console.log("You are too far from the idol to grab it with your whip!");
    }
    if (idol.stolen === true && olmec.appeased === false) {
      console.log("You have failed to appease Olmec before taking the idol! He riddles your body with posion darts that shoot out from the walls.");
    }
    if (idol.stolen === true && olmec.appeased === true) {
      console.log("You have appeased Olmec and retrieved the idol! You can support yourself for a few more months.! You should really ask the community college for a raise.")
    }
  },

  appeaseOlmec : function(answer) {
    if (answer === "yes") {
      olmec.appeased = true;
      console.log("Olmec thanks you for your lovely hat. Feel free to grab that idol with your whip!");
    }
  }

};



// Refactored Code
var player = {
  name:  "Illinois James",
  job: "Community College Professor/Explorer/Whip Enthusiast",
  posX:  0,
  posY: 0,

  checkMap : function() {
    console.log("You are " + player.posY + " steps into the tomb and " + player.posX + " steps past the bend.");
  },

  move : function(direction) {
    if (direction === "forward") {
      player.posY += 1;

    }
    else if (direction === "backward" && player.posY === 0) {
      console.log("Running away eh?");
    }
    else if (direction === "backward") {
      player.posY -= 1;
    }
    else if (direction === "left" || direction === "right" && player.posY !== 5) {
      console.log("You walked into a wall. Impressive.");
    }
    else if (direction === "right") {
      player.posX += 1;
    }
    else {
      console.log("That is not a valid direction.");
    }
//     // After every player movement, check to see if they were killed by the pendulum.
    if (player.posY === 5 && player.posX === 3) {
      if  (Math.random() > 0.5) {
        console.log("You were decapitated by the swinging Pendulum of Doom. Your fedora is ruined. You respawn at the start of the tomb. Nifty!");
        player.posY = 0;
        player.posX = 0;
      }
      else {
        console.log("You got lucky and walked right through the Pendulum of Doom unharmed!");
      }
    }

//     After every movement, check to see if they are 1 step before the pendulum, if they are, give an opportunity to roll
    if (player.posY === 5 && player.posX == 2 ) {
      console.log("You are right in front of the Pendulum of Doom. Now might be a good time to call that roll function...");
    }
    if (player.posY === 5 && player.posX === 4) {
      console.log("Olmec loves your fedora and wants to borrow it. Don't bring up the fact that he doesn't really have a head. Its a sensitive subject. If you wish to appease him, call the appease function with a 'yes' or 'no' parameter. Or you could just try and grab the idol with your whip...");
    }
  },




  roll : function(spacesToRoll) {
    player.posX += spacesToRoll;
  },

 whipGrab : function() {
    if (player.posY === 5 && player.posX > 3) {
      idol.stolen = true;
      console.log("You have stolen the idol!");
    }
    else {
      console.log("You are too far from the idol to grab it with your whip!");
    }
    if (idol.stolen === true && olmec.appeased === false) {
      console.log("You have failed to appease Olmec before taking the idol! He riddles your body with posion darts that shoot out from the walls.");
    }
    if (idol.stolen === true && olmec.appeased === true) {
      console.log("You have appeased Olmec and retrieved the idol! You can support yourself for a few more months.! You should really ask the community college for a raise.")
    }
  },

  appeaseOlmec : function(answer) {
    if (answer === "yes") {
      olmec.appeased = true;
      console.log("Olmec thanks you for your lovely hat. Feel free to grab that idol with your whip!");
    }
  }

};





// Reflection
//What was the most difficult part of this challenge?

// The most difficult part of this challenge was determining the namespacing for the various functions involved in the game. Some functions should have been associated with the objects involved while others appeared to be unrelated to the obejects and produced apparently "global" effects. Aside from these large structural concerns, I stuggled somewhat with writing a large amount of Javascript at having it return vague errors when I was missing a single }. I ended up having to comment out sections and run section by section until I found the error.
//
//What did you learn about creating objects and functions that interact with one another?

//
// I learned that Javascript is very capable of passing data between objects and modifying objects from functions contained in other objects. I learned that this facility of interdependent functions and objets can lead to unpredictable co-dependencies if you are not carful about the conditional statements that govern the information that passed between objects and functions.
//
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I did not use any new in-built functions in my refactored solution.

// How can you access and manipulate properties of objects?
//
// Accessing and manipulating the properties of objects is accomplished by referencing the object, followed by the property name in either dot or bracket notation. I found that using dot notation to acces my variables was the most readable and simple to use as my property names included no special characters and my variables did not contain any data structures that could only be accessed by use of the bracket notation.