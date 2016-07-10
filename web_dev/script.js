console.log("Running!");

function changeParagraphStyle (event) {
  console.log(event);
  var paragraph = document.getElementsByTagName("p")[0];
  paragraph.style.border = "3px solid black";
  paragraph.style.backgroundColor = "black";
}

var mybutton = document.getElementById("change-style");
mybutton.addEventListener("click", changeParagraphStyle);