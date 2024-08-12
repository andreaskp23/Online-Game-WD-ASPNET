let border1 = document.getElementById("border1");
let border2 = document.getElementById("border2");
let border3 = document.getElementById("border3");

  
  function displayRandomNumbers() {
    var angka1 = document.getElementById("angka1");
    var angka2 = document.getElementById("angka2");
    var angka3 = document.getElementById("angka3");
    tombolPlay.style.display = "none";
    setTimeout(function() {
        angka1.value = "I";
      }, 2450);
  
    setTimeout(function() {
        angka2.value = "N";
    }, 2800);
  
    setTimeout(function() {
        angka3.value = "D";
    }, 3200);

    setTimeout(function() {
        tombolPlay.style.display = "block";
      }, 6300);
  }
  
  function playSoundEffect() {
      var audio = new Audio("App_Themes/Theme1/Theme1/audio/slotmachineedit.mp3");
  }
  
  // Memuat audio sebelumnya
      var audio = new Audio("App_Themes/Theme1/Theme1/audio/slotmachineedit.mp3");
  
  var tombolPlay = document.getElementById("play");
  tombolPlay.addEventListener("click", function() {
    // Memainkan audio saat tombol diklik
    audio.play();
    displayRandomNumbers();
  });