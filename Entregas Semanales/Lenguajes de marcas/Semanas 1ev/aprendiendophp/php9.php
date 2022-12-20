<?php
    
    class Persona{
        //propiedades (variables)
        public $edad = 0;
        public $pelo = "no mucho";
        //Metodos (acciones)
        public function diHola(){
            echo "te digo hola";
        }
    }

    $juan = new Persona();
    echo "La edad de juan es ".$juan->edad."<br>";
    echo "El peslo de juan es ".$juan->pelo."<br>";
    $juan->diHola();


?>