var logo = document.getElementById("logo");
var link1 = document.getElementById("link1");
var link2 = document.getElementById("link2");
var link3 = document.getElementById("link3");
var link4 = document.getElementById("link4");
var link5 = document.getElementById("link5");

var i = 1;
logo.addEventListener("click", function () {
    if (i == 0) {
        link1.style.display = "none";
        link2.style.display = "none";
        link3.style.display = "none";
        link4.style.display = "none";
        link5.style.display = "none";
        i = 1
    } else {
        link1.style.display = "block";
        link2.style.display = "block";
        link3.style.display = "block";
        link4.style.display = "block";
        link5.style.display = "block";
        i = 0;
    }
})