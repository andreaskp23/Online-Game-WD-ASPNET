// Mendapatkan elemen-elemen div dengan menggunakan ID
var angkaDivs = [];
for (var i = 1; i <= 35; i++) {
    angkaDivs[i] = document.getElementById("keno" + i);
}

// Mendapatkan elemen input
var angkaSelector1 = document.getElementById("angkaselector1");
var angkaSelector2 = document.getElementById("angkaselector2");
var angkaSelector3 = document.getElementById("angkaselector3");
var angkaSelector4 = document.getElementById("angkaselector4");
var angkaSelector5 = document.getElementById("dealernumber1");
var angkaSelector6 = document.getElementById("dealernumber2");
var angkaSelector7 = document.getElementById("dealernumber3");
var angkaSelector8 = document.getElementById("dealernumber4");
var kenosubmit = document.getElementById("kenosubmit");

// Menambahkan event listener pada input untuk mendeteksi perubahan nilai
angkaSelector1.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector2.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector3.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector4.addEventListener('input', function () {
    tampilkanBorder();
});
angkaSelector5.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector6.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector7.addEventListener('input', function () {
    tampilkanBorder();
});

angkaSelector8.addEventListener('input', function () {
    tampilkanBorder();
});


function getRandomNumber() {
    return Math.floor(Math.random() * 35) + 1;
}


function displayRandomNumbers() {
    setTimeout(function () {
        angkaSelector5.value = getRandomNumber();
        angkaSelector6.value = getRandomNumber();
        angkaSelector7.value = getRandomNumber();
        angkaSelector8.value = getRandomNumber();
        kenosubmit.style.display = "none";
        tampilkanBorder()
    }, 0);

    setTimeout(function () {
        angkaSelector5.value = getRandomNumber();
        angkaSelector6.value = getRandomNumber();
        angkaSelector7.value = getRandomNumber();
        angkaSelector8.value = getRandomNumber();
        tampilkanBorder()
    }, 1000);

    setTimeout(function () {
        angkaSelector5.value = getRandomNumber();
        angkaSelector6.value = getRandomNumber();
        angkaSelector7.value = getRandomNumber();
        angkaSelector8.value = getRandomNumber();
        tampilkanBorder()
    }, 2000);

    setTimeout(function () {
        angkaSelector5.value = getRandomNumber();
        angkaSelector6.value = getRandomNumber();
        angkaSelector7.value = getRandomNumber();
        angkaSelector8.value = getRandomNumber();
        tampilkanBorder()
    }, 3000);

    setTimeout(function () {
        angkaSelector5.value = getRandomNumber();
        angkaSelector6.value = getRandomNumber();
        angkaSelector7.value = getRandomNumber();
        angkaSelector8.value = getRandomNumber();
        tampilkanBorder()
    }, 4000);
}




function tampilkanBorder() {
    // Menghapus border pada semua div
    for (var i = 1; i <= 35; i++) {
        angkaDivs[i].style.border = "none";
    }

    // Mendapatkan nilai dari setiap input
    var nilai1 = parseInt(angkaSelector1.value);
    var nilai2 = parseInt(angkaSelector2.value);
    var nilai3 = parseInt(angkaSelector3.value);
    var nilai4 = parseInt(angkaSelector4.value);
    var nilai5 = parseInt(angkaSelector5.value);
    var nilai6 = parseInt(angkaSelector6.value);
    var nilai7 = parseInt(angkaSelector7.value);
    var nilai8 = parseInt(angkaSelector8.value);

    // Menambahkan border pada div dengan angka yang sama dengan nilai input
    if (nilai1 >= 1 && nilai1 <= 35) {
        angkaDivs[nilai1].style.border = "3px solid black";
        angkaDivs[nilai1].style.borderRadius = "5px";
    }

    if (nilai2 >= 1 && nilai2 <= 35) {
        angkaDivs[nilai2].style.border = "3px solid black";
        angkaDivs[nilai2].style.borderRadius = "5px";
    }

    if (nilai3 >= 1 && nilai3 <= 35) {
        angkaDivs[nilai3].style.border = "3px solid black";
        angkaDivs[nilai3].style.borderRadius = "5px";
    }

    if (nilai4 >= 1 && nilai4 <= 35) {
        angkaDivs[nilai4].style.border = "3px solid black";
        angkaDivs[nilai4].style.borderRadius = "5px";
    }
    if (nilai5 >= 1 && nilai5 <= 35) {
        angkaDivs[nilai5].style.border = "3px solid black";
        angkaDivs[nilai5].style.borderRadius = "5px";
    }

    if (nilai6 >= 1 && nilai6 <= 35) {
        angkaDivs[nilai6].style.border = "3px solid black";
        angkaDivs[nilai6].style.borderRadius = "5px";
    }

    if (nilai7 >= 1 && nilai7 <= 35) {
        angkaDivs[nilai7].style.border = "3px solid black";
        angkaDivs[nilai7].style.borderRadius = "5px";
    }

    if (nilai8 >= 1 && nilai8 <= 35) {
        angkaDivs[nilai8].style.border = "3px solid black";
        angkaDivs[nilai8].style.borderRadius = "5px";
    }
}

var audio = new Audio("App_Themes/Theme1/Theme1/audio/kenoedit.mp3");

kenosubmit.addEventListener('click', function () {
    audio.play();
    displayRandomNumbers();
});