const nav = document.querySelector(".nav");

const hero = document.querySelector(".hero");
window.addEventListener("scroll", fixNav);

function fixNav() {
  if (window.scrollY > nav.offsetHeight + 150) {
    nav.classList.add("active");
  } else {
    nav.classList.remove("active");
  }

    if (window.scrollY ) {
        hero.classList.add("active1");
    } else {
        hero.classList.remove("active1");
    }
}
