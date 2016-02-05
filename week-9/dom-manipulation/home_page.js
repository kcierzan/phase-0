// DOM Manipulation Challenge


// I worked on this challenge [ with: Tim Kelly ].


// Add your JavaScript calls to this page:

// Release 0:
 document.getElementById("release-0").className += "done";

// Release 1:

document.getElementById("release-1").style.display = "none";


// Release 2:

document.getElementsByTagName("H1")[0].innerHTML = "I completed release-2";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:


var release4 = document.getElementsByClassName("release-4")

for (var i=0; i < release4.length; i++) {
  release4[i].style.fontSize = "2em";
};

// Release 5:

var template = document.getElementById("hidden")

document.body.appendChild(template.content.cloneNode(true));
/*
REFLECTION

What did you learn about the DOM?

I learned that the DOM is a powerful way of using Javascript to manipulate and display elements of the HTML document. I was succesful in assigning document objects to Javascript variables changing their attributes via Javascript.

What are some useful methods to use to manipulate the DOM?

Perhaps the most useful methods in manipulating the DOM involve accessing various HTML elements. I found #getElementById, #getElementsByClassName, and #getElementsByTagName to be essential to accessing DOM nodes. Once the nodes were accessed, styling them was relatively easy using methods that corresponded to CSS tags.
*/