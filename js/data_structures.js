// declare arrays of colors and names for horses, add driver code to add one to each array
var horseColors = ["brown", "grey", "red", "striped"];

var horseNames = ["Batman", "The Angry One", "Sneezy", "Frank"];

horseColors.push("spotted");
horseNames.push("Jenny");

// console.log(horseColors);
// console.log(horseNames);

//create object from horseNames and horseColors, names as keys
//Pseudocode - create horses blank object as placeholder, loop through horsenames and add the first name as key with first color as value
//and loop until the length of the horseNames array which is given as equal to the horseColors, return the object
var horses = {}
for (var i = 0; i < horseNames.length; i++) {
    horses[horseNames[i]] = horseColors[i];
}

console.log(horses)