// querySelector


const heading = document.querySelector('.header__texto h2') // retorna 0 o 1 elementos
console.log(heading);

//quesrySelectorAll

const enlaces = document.querySelectorAll('.navegacion a'); // Retorna todos los que haya
console.log(enlaces[0]); // se puede seleccionar cualquier elemento del array

enlaces[0].textContent = "Texto nuevo"; // Y modificarlo

// href(), classlist.add(), classList.remove()

//getElementByID

const heading2 = document.getElementById('heading'); // para seleccionar con #
