// console.log('funcionaaaaaaaaa')

let nav = document.querySelector('.nav');
// nav.classList.add('cambioNav');
let menu = document.querySelector('.nav__contenedor__menu');
let btn = document.querySelector('.nav__contenedor--btn');


btn.addEventListener('click', function () {
    // console.log('hiciste click');
    // menu.classList.add('mostrarMenu');
    menu.classList.toggle('mostrarMenu'); //muestra la clase si no está, si está la clase la quita
})

window.addEventListener('scroll', function () {
    // console.log('hiciste scroll', scrollY);
    if (scrollY > 0) {
        nav.classList.add('cambioNav');
    } else {
        nav.classList.remove('cambioNav');
    }
});

const sections = document.querySelectorAll("section");
const navLi = document.querySelectorAll("nav .nav__contenedor__menu li a");

window.onscroll = () => {
    var current = "";

    sections.forEach((section) => {
        const sectionTop = section.offsetTop - 180;
        if (pageYOffset >= sectionTop) {
            current = section.getAttribute("id");
        }
    });

    navLi.forEach((li) => {
        li.classList.remove("active");
        if (li.getAttribute("href") === "#" + current) {
            li.classList.add("active");
        }
    });
};