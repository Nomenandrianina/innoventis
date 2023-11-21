//header swiper
const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'vertical',
    loop: true,
    speed: 800,
    autoplay: {
        delay: 7000,
    },
    effect: 'fade',
    fadeEffect: {
        crossFade: true
    },
});

//purecounter
new PureCounter();

//vivus
// new Vivus('valueSvg', {duration: 200});


//le groupe swiper
const groupeSwiper = new Swiper('.groupe-swiper', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,
    slidesPerView: 1,
    breakpoints: {
      400: {
        slidesPerView: 2,
      },
      576: {
        slidesPerView: 3,
      }
    },
    autoplay: {
        delay: 4000,
        // pauseOnMouseEnter: true
    },
  
    // If we need pagination
    pagination: {
      el: '.groupe-swiper .swiper-pagination',
      clickable: true
    },
  
    // // Navigation arrows
    // navigation: {
    //   nextEl: '.swiper-button-next',
    //   prevEl: '.swiper-button-prev',
    // },
  
  });

  //typewritter
// const motDuDirecteur = document.querySelector('.mots-directeur .right h3')
// const textToTypeDirecteur = motDuDirecteur.innerText;
// var typewritter = new Typewriter(motDuDirecteur, {
//     delay: 100,
//     loop: true
//   });

// typewritter
//   .pauseFor(1000)
//   .typeString(textToTypeDirecteur)
//   .pauseFor(8000)
//   .start();
