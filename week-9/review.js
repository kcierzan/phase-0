/* PSEUDOCODE

---CREATE A NEW LIST---

INPUT: String of items separated by spaces
OUTPUT: List of items with quanitites associated with each item
STEPS:

Define a function that takes a string as an input
SPLIT the string by space characters into an ordered list
Create a new empty list for our final output
FOR EACH item in the ordered list
  Add the item in the list to the new empty list as a property and assign a default value of 1 to that item.
RETURN the new list.


---ADD AND ITEM WITH QUANTITY TO THE LIST---

INPUT: An item represented as a string, an quantity represented as an integer.
OUTPUT: An updated version of the output list from the previous method that includes the new item.
STEPS:

Define a function that takes two inputs, a string and an integer.
Assign the input string as a property of the list created in the first function with a value of the input integer associated with it.
RETURN the updated list.


---REMOVE AN ITEM FROM THE LIST---

INPUT: An item represented as a string
OUTPUT: An updated version of the list without the item specified in the input.
STEPS:

Define a function that takes a string as an input
IF a property in the list IS EQUAL to the input string
  DELETE the property from the list
ELSE
  PRINT and error message to the console
RETURN the updated list.


---UPDATE THE QUANTITY OF AN ITEM IN THE LIST---

INPUT: An item represented as a string, an updated quantity for that item represented as an integer
OUTPUT: An update version of the list with a new quantity for the input item.
STEPS:

Define a function that takes two inputs, an item represented as a string and a new quantity represented as an integer.
IF a property in the list is EQUAL to the input string
  Assign the input integer to the value of the input string property
ELSE
  PRINT an error message to the console
RETURN the updated list


---PRINT THE LIST TO THE CONSOLE---

INPUT: A grocery list represented as an object.
OUTPUT: A properly formatted message in the console displaying out items and their quantities.

STEPS:

Define a function that takes an object as an input
FOR EVERY property in the object
  PRINT the property and quantity as separated by a colon on a new line


*/

//INITIAL SOLUTION

//New list constructor
function groceryList(itemsForList) {
  var listItemsArray = itemsForList.split(" ");

  for (var i = 0; i < listItemsArray.length; i++) {
     this[listItemsArray[i]] = 1;
  }
};





//Add item and quantity
function addItemAndQuantity(list, itemForList, quantity) {
  list[itemForList] = quantity;
  return list;
};



//Delete Item
function deleteItem(list, itemToDelete) {
  for (var item in list ) {
    if (item == itemToDelete) {
      delete list[itemToDelete];
    }
    else {
      console.log("This item isn't on the list!");
    }
  };
};


//Update the quantity of an item in the list
function updateQuantity(list, item, newQuantity) {
  for (var listItem  in list) {
    if (item == listItem) {
      list[item] = newQuantity;
    }
    else {
      console.log("This item isn't on the list!")
    }
  };
};

//Output the list in a fun way!
function printList(list){
  console.log("GROCERY LIST\n")
  for (var item in list) {
    console.log(item + ": " + list[item])
  };
};

//REFACTORED SOLUTION

//New list constructor
function groceryList(itemsForList) {
  var listItemsArray = itemsForList.split(" ");

  for (var i = 0; i < listItemsArray.length; i++) {
     this[listItemsArray[i]] = 1;
  }
};





//Add item and quantity
function addItemAndQuantity(list, itemForList, quantity) {
  list[itemForList] = quantity;
  return list;
};



//Delete Item
function deleteItem(list, itemToDelete) {
  if (list.hasOwnProperty(itemToDelete)) {
      delete list[itemToDelete];
    }
    else {
      console.log("This item isn't on the list!");
    }
};


//Update the quantity of an item in the list
function updateQuantity(list, item, newQuantity) {
    if (list.hasOwnProperty(item)) {
      list[item] = newQuantity;
    }
    else {
      console.log("This item isn't on the list!")
    }
};

//Output the list in a fun way!
function printList(list){
  console.log("GROCERY LIST\n")
  for (var item in list) {
    console.log(item + ": " + list[item])
  };
};

/*
REFLECTION

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

This challenge afforded me a great opprtunity to review constructors and objects as well as Javascripting scope. I was able to succesfully create an object via a  constructor and to pass the resulting object into a number of other methods.

What was the most difficult part of this challenge?

I did not find this challenge to be particularly difficult but determining whether a constructor or a literal object should be defined was probably the most difficult. In the end, I decided on a constructor as this would provide a greater level of functionality to the program.


Did an array or object make more sense to use and why?

An object made the most sense to use because I needed to associate integers (quantities) with strings. Also, using an object allowed me to define a constructor which allowed great flexibility in the sense that I could create a "grocery list" object without having to re-define the list every time I wanted to start a new grocery list. An array would be useful for an ordered list but I needed the associative properties of an object.

*/