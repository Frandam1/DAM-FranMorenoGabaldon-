const { src, dest, watch } = require("gulp");
const sass = require("gulp-sass")(require('sass'));


function css(done){

    src('src/scss/**/*.scss') // Identificar el archivo SASS
    .pipe(sass()) // Compilarlo
    .pipe(dest("build/css"));  //Almacenarlo en disco duro

    done(); // Callback de que a terminado
}

function dev(done){
    watch("src/scss/**/*.scss", css);


    done();
}

exports.css = css;
exports.dev = dev;