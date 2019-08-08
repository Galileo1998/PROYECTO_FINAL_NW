var currentSlide = 0;
var slides = [];
var goRight = true;
var slidesCount = 0;
function page_onload(e) {
    slides = document.getElementsByClassName("sliderItem");
    if (slides.length > 1) {
        for (var i = 1; i < slides.length; i++) {
            slides[i].style.backgroundImage = "url(" + slides[i].getAttribute("data-img") + ")";
            slides[i].style.left = "100vw";
        }
    }
    setTimeout(tick, 2000);
}
function tick() {
    var to = currentSlide;
    if (goRight) {
        if (to === slides.length - 1) {
            goRight = false;
            to--;
        } else {
            to++;
        }
    } else {
        if (to === 0) {
            goRight = true;
            to++;
        } else {
            to--;
        }
    }
    showSlide(to);
    setTimeout(tick, 2000);
}

function showSlide(index) {
    if (goRight) {
        slides[currentSlide].style.left = "-100vw";
    } else {
        slides[currentSlide].style.left = "100vw";
    }
    slides[index].style.left = "0vw";
    currentSlide = index;
}
document.addEventListener("DOMContentLoaded", page_onload);
