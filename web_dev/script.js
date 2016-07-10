console.log("Running!");

function changeParagraphStyle (event) {
  console.log(event);
  var paragraph = document.getElementsByTagName("p")[0];
  paragraph.style.border = "3px solid black";
  paragraph.style.backgroundColor = "black";
}

function addElement (event) {
  console.log("inside addElement function");
  var p = document.createElement("p");
  p.textContent = "Nice to meet you.";
  document.body.appendChild(p);
}

addElement();

var mybutton = document.getElementById("change-style");
mybutton.addEventListener("click", changeParagraphStyle);