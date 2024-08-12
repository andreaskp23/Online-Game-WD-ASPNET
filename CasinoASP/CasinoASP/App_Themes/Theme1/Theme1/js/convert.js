var cointocashbutton1 = document.getElementById("cointocashbutton");
var cashtocoinbutton1 = document.getElementById("cashtocoinbutton");

var cointocashpage1 = document.getElementById("cointocashpage");
var cashtocoinpage1 = document.getElementById("cashtocoinpage");

var cointext1 = document.getElementById("cointext1");
var cointext2 = document.getElementById("cointext2");

var totalprice1 = document.getElementById("totalprice1");
var totalprice2 = document.getElementById("totalprice2");

// Convert
cointocashbutton1.addEventListener("click", function() {
    cointocashpage1.style.display = "block";
    cashtocoinpage1.style.display = "none"; 
});

cashtocoinbutton1.addEventListener("click", function() {
    cashtocoinpage1.style.display = "block";
    cointocashpage1.style.display = "none";
});

cointext1.addEventListener("input", function () {
    var value = parseFloat(cointext1.value);
    if (!isNaN(value)) {
        totalprice1.innerText = value * 5000;
    } else {
        totalprice1.innerText = "";
    }
});

cointext2.addEventListener("input", function () {
    var value = parseFloat(cointext2.value);
    if (!isNaN(value)) {
        totalprice2.innerText = value * 4900;
    } else {
        totalprice2.innerText = "";
    }
});