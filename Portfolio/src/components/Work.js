import React, { useState } from "react";
import { motion } from "framer-motion";
import { useInView } from "react-intersection-observer";
import { fadeIn } from "../variants";

// Modales para los proyectos

import Modal from "../modals/Modal";
import ModalPrueba from "../modals/ModalPrueba";
import ProyectoCrud from "../modals/ProyectoCrud"
import ProyectoApp1 from "../modals/ProyectoApp1"
import AppTienda1 from "../modals/AppTienda1";
import Memoria from "../modals/Memoria";
import AppFest from "../modals/AppFest";
import AppCasa from "../modals/AppCasa";
import Festcss from "../modals/Festcss";

// Imagenes para los proyectos

import ImgCrud from "../modals/img/CRUD1.png";
import ImgBull from "../modals/img/bull.png";
import ImgApp1 from "../modals/img/frontApp1.png";
import ImgApp2 from "../modals/img/storeApp1.png";
import ImgMemoria from "../modals/img/memoria1.png";
import ImgPass from "../modals/img/pass1.png";
import ImgRock from "../modals/img/rock0.png"
import AppPass from "../modals/AppPass";
import AppCasas from "../modals/img/casa2.png";

// Función Principal

const Work = () => {

  // Definimos los modales a usar
  const [openModal, setOpenModal] = useState(false);
  const [openModalPrueba, setOpenModalPrueba] = useState(false);
  const [openProyectoCrud, setOpenProyectoCrud] = useState(false);
  const [openProyectoApp1, setOpenProyectoApp1] = useState(false);
  const [openAppTienda1, setOpenAppTienda1] = useState(false);
  const [openAppPass, setOpenAppPass] = useState(false);
  const [openMemoria, setOpenMemoria] = useState(false);
  const [openAppFest, setOpenAppFest] = useState(false);
  const [openAppCasa, setOpenAppCasa] = useState(false);

  // Definimos las funciones para abrir cada uno de los modales
  const handleOpenModalPrueba = () => {
    setOpenModalPrueba(true);
  }
  const handleOpenProyectoCrud = () => {
    setOpenProyectoCrud(true);
  }
  const handleOpenProyectoApp1 = () => {
    setOpenProyectoApp1(true);
  }
  const handleOpenAppTienda1 = () => {
    setOpenAppTienda1(true);
  }
  const handleOpenMemoria = () => {
    setOpenMemoria(true);
  }
  const handleOpenAppFest = () => {
    setOpenAppFest(true);
  }
  const handleOpenAppPass = () => {
    setOpenAppPass(true);
  }
  const handleOpenAppCasa = () => {
    setOpenAppCasa(true);
  }
  //Definimos las constantes de la seccion principal
  const [currentPage, setCurrentPage] = useState(1);
  const [buttonText, setButtonText] = useState("Ver más proyectos");
  //Funcion para manejar los cambios de pagina y texto botones
  const handlePageChange = () => {
    if (currentPage === 1) {
      setCurrentPage(2);
      setButtonText("Proyectos 2");
    } else if (currentPage === 2) {
      setCurrentPage(3);
      setButtonText("Proyectos 3");
    } else if (currentPage === 3) {
      setCurrentPage(4);
      setButtonText("Volver a Inicio")
    } else {
      (setCurrentPage(1));
      setButtonText("Proyectos 1")
    }
    
  };

   /*
   Funcion Hook descartada
   const [ref, inView] = useInView({
    threshold: 0.5,
  });*/

// Definimos las paginas
  const pages = [
    <motion.div
      key={1}
      variants={fadeIn("right", 0.3)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.3 }}
      className="flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between"
    >
      {/**------------ CONTENDEDOR DE LA CARD ------------------*/}
      <div
        className="group flex-1 relative overflow-hidden border-2 border-white/50
rounded-xl"
      >
        {/**------------ ESTILO DE LA CARD ------------------*/}
        <div
          className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
        ></div>
        {/**------------ IMAGEN DE LA CARD ------------------ */}
        <img
          className="group-hover:scale-125 transition-all duration-500"
          src={ImgCrud}
          alt=""
        />
        {/**------------ INTERIOR DE LA CARD ------------------ */}
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
        >
          <span className="text-gradient">SpringBoot || Angular || MongoDB</span>
        </div>
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
        >
          <span className="text-3xl text-white">C.R.U.D. Básico</span>
          <button 
            onClick={handleOpenProyectoCrud}
            className="btn absolute -bottom-full left-0 px-2.5"
          >
            + Info
          </button>
          <ProyectoCrud open={openProyectoCrud} onClose={() => setOpenProyectoCrud(false)} />
        </div>
      </div>
      {/**--------------------------- FIN PRIMERA CARD----------------------------------------*/}
      {/**--------------------------- INICIO SEGUNDA CARD----------------------------------------*/}
      <div
        className="group relative overflow-hidden  border-2 border-white/50
rounded-xl"
      >
        {/**OVERLAY */}
        <div
          className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
        ></div>
        {/**IMAGEN */}
        <img
          className="group-hover:scale-125 transition-all duration-500"
          src={ImgBull}
          alt=""
        />
        {/**PRETTY */}
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
        >
          <span className="text-gradient">Python || Tkinter</span>
        </div>
        {/**PRETTY */}
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
        >
          <span className="text-3xl text-white">Proyecto Antibullying</span>
          <button
            onClick={handleOpenModalPrueba}
            className="btn absolute -bottom-full left-0 px-2.5"
          >
            + Info
          </button>
          <ModalPrueba open={openModalPrueba} onClose={() => setOpenModalPrueba(false)} />
        </div>
      </div>
      {/**--------------------------- FIN SEGUNDA CARD----------------------------------------*/}
    </motion.div>,

    <motion.div
      key={2}
      variants={fadeIn("right", 0.3)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.3 }}
      className="flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between"
    >
       {/**--------------------------- INICIO TERCERA CARD----------------------------------------*/}
      <div className="group flex-1 relative overflow-hidden border-2 border-white/50 rounded-xl">
      <div className="group-hover:bg-black/70 w-full h-full absolute z-40 transition-all duration-300"></div>
        <img
          className="group-hover:scale-125 transition-all duration-500"
          src={ImgApp1}
          alt=""/>

      <div className="absolute -bottom-full left-12 group-hover:bottom-24 transition-all duration-500 z-50">
        <span className="text-gradient">HTML || CSS3</span>
      </div>
      <div className="absolute -bottom-full left-12 group-hover:bottom-14 transition-all duration-700 z-50">
        <span className="text-3xl text-white">Diseño básico AppWeb</span>
          <button
            onClick={handleOpenProyectoApp1}
            className="btn absolute -bottom-full left-0 px-2.5"
          >
            + Info
          </button>
          <ProyectoApp1 open={openProyectoApp1} onClose={() => setOpenProyectoApp1(false)} />
        </div>
      </div>
    {/**--------------------------- INICIO CUARTA CARD----------------------------------------*/}

      <div
        className="group relative overflow-hidden  border-2 border-white/50
rounded-xl"
      >
        {/**OVERLAY */}
        <div
          className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
        ></div>
        {/**IMAGEN */}
        <img
          className="group-hover:scale-125 transition-all duration-500"
          src={ImgApp2}
          alt=""
        />
        {/**PRETTY */}
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
        >
          <span className="text-gradient">HTML || CSS </span>
        </div>
        {/**PRETTY */}
        <div
          className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
        >
          <span className="text-3xl text-white">Store App Básico</span>
          <button
            onClick={handleOpenAppTienda1}
            className="btn absolute -bottom-full left-0 px-2.5"
          >
            + Info
          </button>
          <AppTienda1 open={openAppTienda1} onClose={() => setOpenAppTienda1(false)} />
        </div>
      </div>
    </motion.div>,
    <motion.div
    key={3}
    variants={fadeIn("right", 0.3)}
    initial="hidden"
    whileInView={"show"}
    viewport={{ once: false, amount: 0.3 }}
    className="flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between"
  >
    {/**--------------------------- INICIO QUINTA CARD----------------------------------------*/}
    <div
      className="group flex-1 relative overflow-hidden border-2 border-white/50
rounded-xl"
    >
      {/**OVERLAY */}
      <div
        className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
      ></div>
      {/**IMAGEN */}
      <img
        className="group-hover:scale-125 transition-all duration-500"
        src={ImgMemoria}
        alt=""
      />
      {/**PRETTY */}
      <div
        className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
      >
        <span className="text-gradient">REACT JS</span>
      </div>
      {/**PRETTY */}
      <div
        className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
      >
        <span className="text-3xl text-white">Juego Memoria</span>
        <button
          onClick={handleOpenMemoria}
          className="btn absolute -bottom-full left-0 px-2.5"
        >
          + Info
        </button>
        <Memoria open={openMemoria} onClose={() => setOpenMemoria(false)} />
      </div>
    </div>
    {/**--------------------------- INICIO SEXTA CARD----------------------------------------*/}
    <div
      className="group relative overflow-hidden  border-2 border-white/50
rounded-xl"
    >
      {/**OVERLAY */}
      <div
        className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
      ></div>
      {/**IMAGEN */}
      <img
        className="group-hover:scale-125 transition-all duration-500"
        src={ImgPass}
        alt=""
      />
      {/**PRETTY */}
      <div
        className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
      >
        <span className="text-gradient">Django</span>
      </div>
      {/**PRETTY */}
      <div
        className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
      >
        <span className="text-3xl text-white">Generador de Contraseñas</span>
        <button
          onClick={handleOpenAppPass}
          className="btn absolute -bottom-full left-0 px-2.5"
        >
          + Info
        </button>
        <AppPass open={openAppPass} onClose={() => setOpenAppPass(false)} />
      </div>
    </div>
  </motion.div>,

  <motion.div
  key={4}
  variants={fadeIn("right", 0.3)}
  initial="hidden"
  whileInView={"show"}
  viewport={{ once: false, amount: 0.3 }}
  className="flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between"
>
  {/**--------------------------- INICIO SEPTIMA CARD----------------------------------------*/}
  <div
    className="group relative overflow-hidden  border-2 border-white/50
rounded-xl"
  >
    {/**OVERLAY */}
    <div
      className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
    ></div>
    {/**IMAGEN */}
    <img
      className="group-hover:scale-125 transition-all duration-500"
      src={ImgRock}
      alt=""
    />
    {/**PRETTY */}
    <div
      className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
    >
      <span className="text-gradient">App Festival Rock</span>
    </div>
    {/**PRETTY */}
    <div
      className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
    >
      <span className="text-3xl text-white">HTML || SASS || JS</span>
      <button
        onClick={handleOpenAppFest}
        className="btn absolute -bottom-full left-0 px-2.5"
      >
        + Info
      </button>
      <Festcss open={openAppFest} onClose={() => setOpenAppFest(false)} />
    </div>
  </div>
  {/**--------------------------- INICIO OCTAVA CARD----------------------------------------*/}
  <div
    className="group relative overflow-hidden  border-2 border-white/50
rounded-xl"
  >
    {/**OVERLAY */}
    <div
      className="group-hover:bg-black/70 w-full h-full absolute
z-40 transition-all duration-300"
    ></div>
    {/**IMAGEN */}
    <img
      className="group-hover:scale-125 transition-all duration-500"
      src={AppCasas}
      alt=""
    />
    {/**PRETTY */}
    <div
      className="absolute -bottom-full left-12 group-hover:bottom-24
transition-all duration-500 z-50"
    >
      <span className="text-gradient">App Inmobiliaria</span>
    </div>
    {/**PRETTY */}
    <div
      className="absolute -bottom-full left-12 group-hover:bottom-14
transition-all duration-700 z-50"
    >
      <span className="text-3xl text-white">HTML || SASS || JS</span>
      <button
        onClick={handleOpenAppCasa}
        className="btn absolute -bottom-full left-0 px-2.5"
      >
        + Info
      </button>
      <AppCasa open={openAppCasa} onClose={() => setOpenAppCasa(false)} />
    </div>
  </div>
</motion.div>,

  ];

  return (
    <section className="section" id="work">
      <div className="container mx-auto">
        <div className="flex flex-col lg:flex-row gap-x-10">
          <motion.div
            variants={fadeIn("left", 0.5)}
            initial="hidden"
            whileInView={"show"}
            viewport={{ once: false, amount: 0.3 }}
            className="flex-1 flex flex-col gap-y-12 mt-12 mb-10 lg:mb-0"
          >
            {/**--------------------------- SECCION IZQUIERDA----------------------------------------*/}
            <div>
              <h2 className="h2 leading-tight text-accent">
                Proyectos <br/>
                personales
              </h2>
              <p className="max-w-sm mt-16 mb-16">
                Texto random2121,Texto random,Texto random,Texto random
              </p>
              <button onClick={handlePageChange} className="btn btn-lg mt-12">
                {buttonText}
              </button>
            </div>

            <Modal open={openModal} onClose={() => setOpenModal(false)} />
          </motion.div>{" "}
          {/** --------------------------  FIN PARTE IZQUIERDA ------------------- */}
          {pages[currentPage - 1]}{" "}
        </div>
      </div>
    </section>
  );
};

export default Work;
