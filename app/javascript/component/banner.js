import Typed from 'typed.js';

function loadDynamicBannerText() {

  new Typed('#banner-typed-text', {
    strings: ["Why limit happy to an hour", "Keep calm and have a cocktail", "You are the gin to my tonic"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
