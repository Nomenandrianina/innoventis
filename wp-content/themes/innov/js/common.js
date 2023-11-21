AOS.init({
    duration: 1000
});

//nav scroll
const nav = document.querySelector('nav')
function changeNavStyleOnScroll(){
    let scrollTop = document.documentElement.scrollTop;
    if (scrollTop > 150) {
        nav.classList.add('scrolling')
    } else {
        nav.classList.remove('scrolling')
    }
}
changeNavStyleOnScroll()
window.addEventListener('scroll', changeNavStyleOnScroll)


//typewritter
const heroTitle = document.querySelector('.hero .text h1.typewritter')
const textToType = heroTitle.innerText;
console.log(textToType);
var typewritter = new Typewriter(heroTitle, {
    delay: 100,
    loop: true
  });

typewritter
  .pauseFor(1000)
  .typeString(textToType)
  .pauseFor(8000)
  .start();
