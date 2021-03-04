console.log("works");

var checkbox = document.querySelector("#changeraw");
var xssVectorId = document.querySelector('#xssvector').dataset.xssvectorid;
var raw = false;

checkbox.addEventListener('change', function() {
  if (this.checked) {
    raw = true;
  } else {
    raw = false;
  }
  var url = `/vectors/${xssVectorId}?raw=${raw}`;
  window.open(url); 
});
