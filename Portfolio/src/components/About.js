import React, { useState } from "react";
import CountUp from "react-countup";
import { useInView } from "react-intersection-observer";
import { motion } from "framer-motion";
import { fadeIn } from "../variants";
import {
  SiPostman,
  SiMysql,
  SiInkscape,
  SiIntellijidea,
  SiKotlin,
} from "react-icons/si";

import {
  BiLogoJavascript,
  BiLogoJquery,
  BiLogoDjango,
  BiLogoSpringBoot,
  BiLogoKubernetes,
  BiLogoPostgresql,
  BiLogoMongodb,
  BiLogoVisualStudio,
  BiLogoFirebase,
} from "react-icons/bi";

import {
  FaBootstrap,
  FaHtml5,
  FaSass,
  FaJs,
  FaAngular,
  FaReact,
  FaNodeJs,
  FaJava,
  FaPython,
  FaJenkins,
  FaDocker,
  FaGulp,
  FaGithub,
  FaFileExcel,
  FaPhp,
} from "react-icons/fa";

const About = () => {
  const [ref, inView] = useInView({
    threshold: 0.5,
  });

  const [currentPage, setCurrentPage] = useState(1);
  const [buttonText, setButtonText] = useState("Siguiente Página");

  const handlePageChange = () => {
    if (currentPage === 1) {
      setCurrentPage(2);
      setButtonText("Soft-Skills");
    } else if (currentPage === 2) {
      setCurrentPage(3);
      setButtonText("Siguiente");
    } 
    else if (currentPage === 3) {
      setCurrentPage(4);
      setButtonText("Bio");
    }else {
      setCurrentPage(1);
      setButtonText("Competencias");
    }
  };

  const pages = [
    <motion.div
      key={1}
      variants={fadeIn("left", 0.5)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.3 }}
      className="flex-1"
    >
      <h2 className="h2 text-accent">Sobre mí</h2>
      <h3 className="h3 mb-4"></h3>
      <p className="mb-6 border-b py-2 border-white/20 font-four">
        A los 36 años decidí darle un vuelco a mi carrera profesional, el
        objetivo fue convertir mi pasión en una forma de ganarme la vida.
        <br />
        <br />
        Primero de forma autodidacta, y más tarde oficializando mi aprendizaje,
        he terminado desarrollando las competencias necesiarias para participar
        de forma eficaz en proyectos IT. <br />
        <br />
        Pese a que todavía me queda mucho por aprender, mi ilusión es poder
        demostrar que todo el esfuerzo y la dedicación a esta empresa a merecido
        la pena.
      </p>
      {/**Stats */}
      <div className="flex gap-x-6 lg:gap-x-10 mb-12">
        <div>
          <div className="text-[40px] font-tertiary text-gradient mb-2">
            {inView ? <CountUp start={0} end={23} duration={8} /> : null}
          </div>
          <div className="font-primary text-sm tracking-[2px]">
            Años <br />
            trabajando
          </div>
        </div>
        <div>
          <div className="text-[40px] font-tertiary text-gradient mb-2">
            {inView ? <CountUp start={0} end={15} duration={8} /> : null}
          </div>
          <div className="font-primary text-sm tracking-[2px]">
            Certificados y <br />
            Especializaciones
          </div>
        </div>
        <div>
          <div className="text-[40px] font-tertiary text-gradient mb-2">
            {inView ? <CountUp start={0} end={21} duration={10} /> : null}
          </div>
          <div className="font-primary text-sm tracking-[2px]">
            Proyectos <br />
            Personales
          </div>
        </div>
      </div>
      <div className="flex gap-x-8 items-center">
        <button onClick={handlePageChange} className="btn btn-lg">
          {buttonText}
        </button>
      </div>
    </motion.div>,
    <motion.div
      key={2}
      variants={fadeIn("left", 0.5)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.3 }}
      className="flex-1"
    >
      <h2 className="h2 text-accent">Competencias</h2>

      <p className="mb-6 text-[26px] font-bold border-b border-white/20">
        <span className="text-accent2">Front-End</span> <br />
        <div className="flex text-[40px] py-6 gap-x-3 ml-1">
          <FaHtml5 />
          <FaSass />
          <FaJs />
          <FaAngular />
          <FaNodeJs />
          <FaReact />
          <SiKotlin />
          <FaBootstrap />
          <BiLogoJquery />
        </div>
      </p>
      <p className="mb-6 text-[26px] font-bold border-b border-white/20 ">
        <span className="text-accent2">Back-End</span> <br />
        <div className="flex text-[40px] py-6 gap-x-3 ml-1">
          <FaJava />
          <FaPython />
          <BiLogoJquery />
          <BiLogoSpringBoot />
          <BiLogoDjango />
          <FaPhp />
          <SiMysql />
          <BiLogoPostgresql />
          <BiLogoMongodb />
          <BiLogoFirebase />
        </div>
      </p>
      <p className="mb-6 text-[26px] font-bold border-b border-white/20">
        <span className="text-accent2">Herramientas</span> <br />
        <div className="flex text-[40px] py-6 gap-x-3 ml-1">
          <SiPostman />
          <FaDocker />
          <BiLogoKubernetes />
          <FaJenkins />
          <FaGulp />
          <FaGithub />
          <SiIntellijidea />
          <BiLogoVisualStudio />
          <SiInkscape />
          <FaFileExcel />
        </div>
      </p>

      <div className="flex gap-x-8 items-center">
        <button onClick={handlePageChange} className="btn btn-lg">
          {buttonText}
        </button>
      </div>
    </motion.div>,
    <motion.div
      key={3}
      variants={fadeIn("left", 0.5)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.3 }}
      className="flex-1"
    >
      <h2 className="h2 text-accent">Soft-Skills</h2>
      <h3 className="h3 mb-4 text-accent2">
      Resolución de problemas
      </h3>
      <p className="mb-6 border-b py-2 border-white/20 font-four">
  
      Aplico un enfoque lógico y creativo a la hora de resolver problemas, 
      procurando optimizar el desarrollo y el flujo de trabajo.
      </p>
      <h3 className="h3 mb-4 text-accent2">Trabajo en equipo</h3>
      <p className="mb-6 border-b py-2 border-white/20 font-four">
      Contribución proactiva en equipos, colaborando en la planificación y 
      ejecución de tareas para alcanzar objetivos compartidos.
      </p>
      <h3 className="h3 mb-4 text-accent2">Aprendizaje continuo</h3>
      <p className="mb-6 border-b py-2 border-white/20 font-four">
      Poseo una actitud proactiva en la búsqueda de oportunidades de desarrollo profesional y 
      adquisición de nuevas habilidades técnicas para mantenerse actualizado.
      </p>
    
      {/**Stats */}

      <div className="flex gap-x-8 items-center">
        <button onClick={handlePageChange} className="btn btn-lg">
          {buttonText}
        </button>
      </div>
    </motion.div>,
        <motion.div
        key={4}
        variants={fadeIn("left", 0.5)}
        initial="hidden"
        whileInView={"show"}
        viewport={{ once: false, amount: 0.3 }}
        className="flex-1"
      >
        <h2 className="h2 text-accent">Soft-Skills</h2>
        <h3 className="h3 text-accent2 mb-4">
        Resiliencia
        </h3>
        <p className="mb-6 border-b py-2 border-white/20 font-four">
        Enfrento desafíos y fracasos con una actitud positiva y 
        la determinado a encontrar soluciones.
        </p>
        <h3 className="h3 mb-4 text-accent2">Paciencia</h3>
        <p className="mb-6 border-b py-2 border-white/20 font-four">
        Asumo desafíos técnicos y dificultades con una actitud tranquila,
         sosegada y persistente.
        </p>
        <h3 className="h3 mb-4 text-accent2">Gestión del tiempo</h3>
        <p className="mb-6 border-b py-2 border-white/20 font-four">
        Planifico, organizo y priorizo tareas de manera lo más eficiente posible, 
        cumpliendo con los plazos y manteniendo la productividad.
        </p>
      
        {/**Stats */}
  
        <div className="flex gap-x-8 items-center">
          <button onClick={handlePageChange} className="btn btn-lg">
            {buttonText}
          </button>
        </div>
      </motion.div>

    // Espacio para mas paginación
  ];

  return (
    <section className="section" id="about" ref={ref}>
      <div className="container mx-auto">
        <div className="flex flex-col gap-y-10 lg:flex-row lg:items-center lg:gap-x-20 lg:gap-y-0 h-screen">
          {/* img */}
          <motion.div
            variants={fadeIn("right", 0.3)}
            initial="hidden"
            whileInView={"show"}
            viewport={{ once: false, amount: 0.3 }}
            className="flex-1 bg-about bg-contain bg-no-repeat h-[640px] mix-blend-lighten bg-top"
          ></motion.div>
          {/* text */}
          {pages[currentPage - 1]}{" "}
          {/* Renderiza el contenido de la página actual */}
          <div className="flex gap-x-8 items-center">
            {/* Botón para cambiar de página */}
          </div>
        </div>
      </div>
    </section>
  );
};

export default About;
