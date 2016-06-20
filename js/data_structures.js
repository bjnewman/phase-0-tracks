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

//console.log(horses)

//write a constructor function for a car, with a few properties including one that is a function
function Car(brand, model, year) {

    console.log("A brand new (slightly used) car:", this);

    this.brand = brand;
    this.model = model;
    this.year = year;

    this.honk = function() {console.log("Honk!");}
    this.age = function() {
     return (2016 - this.year);
    }
}

//build some cars and driver code to test the object properties including functions
console.log("I'm gonna build some cars, watch me!");
var bensCar = new Car("Honda", "Civic", 1996);
console.log("boop.....beep....");
console.log("Wonderful! You have excellent taste in automobiles to select a " + bensCar.brand + bensCar.model + ".");
console.log("" + bensCar.age() + "years.");
bensCar.year = 1997;
console.log("" + bensCar.age() + "years.");

var dadsCar = new Car("Toyota", "Prius", 2006);
dadsCar.honk()