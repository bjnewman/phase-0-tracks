//pseudocode a function that takes an array of words or phrases and returns longest entry in the array
//create a variable for longest phrase, then for each entry in the array IF the length of the string is longer
//than the length of the current longest phrase we assign the new value to the longest phrase, do this until the length of the initial array is met and then return the longest phrase variable
var longestPhrase = ""
function longestPhraseFinder(array_of_strings) {
    for (var i = 0; i < array_of_strings.length; i++) {
        if (array_of_strings[i].length > longestPhrase.length) {
            longestPhrase = array_of_strings[i];
        } else {
            longestPhrase = longestPhrase
        }
    }
    return longestPhrase;
}

somePhrases = ["what a crazy world", "i know right", "yeah, seriously", "hey!"];
console.log("The longest phrase in your list is " + longestPhraseFinder(somePhrases) + ". Congratulations!");
longestPhrase = "";
otherPhrases = ["more coffee", "mas cafe, por favor", "we don't serve coffee here, sir. This is not a restaurant"];
console.log("The longest phrase in your list is " + longestPhraseFinder(somePhrases) + ". Congratulations!")