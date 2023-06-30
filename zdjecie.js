var zdjecie = document.getElementById("zdjecie");
var i2 = 1;
setInterval(function () {
    i2 = ++i2 % 7;
    if (i2 == 0) i2 = 1;
    zdjecie.src =  "./galeria/" + i2 + ".png"
}, 3000);
