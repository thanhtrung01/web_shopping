//navbar
const hamburer = document.querySelector(".hamburger");
const navList = document.querySelector(".nav-list");

if (hamburer) {
    hamburer.addEventListener("click", () => {
        navList.classList.toggle("open");
    });
}

// Popup close button
const popup = document.querySelector(".popup");
const closePopup = document.querySelector(".popup-close");

if (popup) {
    closePopup.addEventListener("click", () => {
        popup.classList.add("hide-popup");
    });

    window.addEventListener("load", () => {
        setTimeout(() => {
            popup.classList.remove("hide-popup");
        }, 1000);
    });
}

// Hero Carousel
const slider1 = document.querySelector('#glide_1');
if (slider1) {
    new Glide(slider1, {
        type: 'carousel',
        startAt: 0,
        autoplay: 2500,
        gap: 0,
        hoverpause: true,
        perView: 1,
        animationDuration: 800,
        animationTimingFunc: 'linear',
    }).mount();
}
// detail product
$(function () {
   console.log("hello");
   $("#zoom").imagezoomsl({
   		zoomrange: [4, 4],
   });
});

//Search auto