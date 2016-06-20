//pseudocode a function that takes an array of words or phrases and returns longest entry in the array
//create a variable for longest phrase, then for each entry in the array IF the length of the string is longer
//than the length of the current longest phrase we assign the new value to the longest phrase, do this until the length of the initial array is met and then return the longest phrase variable

function longestPhraseFinder(array_of_strings) {
    var longestPhrase = ""
    for (var i = 0; i < array_of_strings.length; i++) {
        if (array_of_strings[i].length > longestPhrase.length) {
            longestPhrase = array_of_strings[i];
        } else {
            longestPhrase = longestPhrase
        }
    }
    return longestPhrase;
}

//write a function that takes two objects and checks to see if they share at least one key-value pair
//set a placeholder variable matches default value to false, function takes two objects as parameters
//take the keys from the first object as an array and search for that key in the second object, if the return value is equal to the first value set match to true
//loop through first object until length (don't need to search second, any matches would have shown up in first)

function objectMatcher(first_object, second_object) {
//Object.keys() method returns array of keys 
  var match = false  
  var first_objectKeys = Object.keys(first_object)
    for (var i = 0; i < first_objectKeys.length; i++) {
        if (first_object[first_objectKeys[i]] == second_object[first_objectKeys[i]]) {
            match = true;
        } else {
            match = false;
        }
    }
    return match
}

//define a function that takes an integer as input, builds array of length = input with random words as strings
//the random words should be between 1-10 letters
//Pseudocode Release 2
//add alphabet string (indexed 0-25)
//to create each random word we randomly select the length between 1-10, then loop until the length is met selecting a random character from our alphabet array
//this word is pushed into the newly created return array, and we loop the entire process until the counter = 

//first we define helper function to get random integers between min, max
function getRandInteger(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

//next we create the function that creates random words of length between 1-10, store them in new variable and returns new variable
function randomWord(length) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var randomString = "";
  for (i = 0; i < length; i++) {
     randomString = randomString + alphabet[getRandInteger(0,25)];
  }
  return randomString
}


//finally we create the function that takes the input integer and returns array of random words
function manyrandomWords(amount) {
  var user_array = []
  for (j = 0; j < amount; j++) {
      user_array.push(randomWord(getRandInteger(1, 10)))    
  }
  return user_array
}

//driver code to 10 times generate random array and feed to longest phrase function, print result
for (k = 0; k < 10; k++ )  {
    var sample_array = [];
    sample_array = manyrandomWords(getRandInteger(1,5))
    console.log(sample_array);
    console.log(longestPhraseFinder(sample_array))
}
//driver code to return true for objectmatcher
// winner = {name: "Jill", age: 47}
// loser = {name: "Tim", age: 47}
// console.log("What a wonderful coincidence that it's " + objectMatcher(winner, loser)+ " there's a match between you two!")
// match = false

//driver code to return false for objectmatcher
// winner2 = {name: "Jill", age: 47}
// loser2 = {name: "Tim", age: 37}
// console.log("So sorry, it looks " + objectMatcher(winner2, loser2) + " that there is a match here :(") 

//Driver code release 0
// somePhrases = ["what a crazy world", "i know right", "yeah, seriously", "hey!"];
// console.log("The longest phrase in your list is " + longestPhraseFinder(somePhrases) + ". Congratulations!");
// longestPhrase = "";
// otherPhrases = ["more coffee", "mas cafe, por favor", "we don't serve coffee here, sir. This is not a restaurant"];
// console.log("The longest phrase in your list is " + longestPhraseFinder(somePhrases) + ". Congratulations!")