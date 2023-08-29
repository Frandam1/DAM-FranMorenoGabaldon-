import React, { useState } from 'react';
import CountUp from 'react-countup';
import { useInView } from 'react-intersection-observer';
import { BsArrowUpRight, BsUiRadios } from 'react-icons/bs';
import { GrCertificate } from 'react-icons/gr';
import {motion} from 'framer-motion'
import { fadeIn } from '../variants';


const services = [
  {
    name: 'Técnico Superior Desarrollo Aplicaciones Multiplataforma',
    description: `Centro de estudios CAPITOL`,
    link: 'Certificado',
  },
  {
    name: 'Introducción a la I.A. y los algoritmos',
    description: `Fórmate || S.E.P.E. || 160 horas`,
    link: 'Certificado',
  },
  {
    name: 'Gestión de la seguridad informática de la empresa',
    description: `Fórmate || S.E.P.E. || 90 horas`,
    link: 'Certificado',
  },


  
];
const services2 = [
  {
    name2: 'Curso en Desarrollo Aplicaciones Web Completo || Udemy ',
    description2: `HTML || CSS3 || JS || AJAX || PHP || MySQL `,
    link2: 'Certificado',
  },
  {
    name2: 'Programación de Apps para Android con Kotlin || Udemy',
    description2: `POO || AE || Sistema de Pagos || Integracion APIs || Administración BBDD || Udemy `,
    link2: 'Certificado',
  },
  {
    name2: 'Spring Boot y Angular: Creando aplicaciones cómo Fullstack || Udemy',
    description2: `Spring Boot 3, Api Rest, Keycloak, Docker, JUnit, Mockito, Angular 16, Angular Material, Chartjs, Git, GitFlow, Kanban `,
    link2: 'Certificado',
  },
  
];
const services3 = [
  {
    name3: 'Zona 3',
    description3: `Proyecto2 Descripcion del proyecto1.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.`,
    link3: 'Certificado',
  },
  {
    name3: 'Zona 3',
    description3: `Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.`,
    link3: 'Certificado',
  },
  {
    name3: 'Zona 3',
    description3: `Proyecto2 Descripcion del proyecto3.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.
                  Proyecto2 Descripcion del proyecto2.`,
    link3: 'Certificado',
  },
  
];
 

const Services = () => {

  const [ref, inView] = useInView({
    threshold: 0.5,
  });

  const [currentPage, setCurrentPage] = useState(1);
  const [buttonText, setButtonText] = useState('Siguiente Página');

  const handlePageChange = () => {
    if (currentPage === 1) {
      setCurrentPage(2);
      setButtonText('Siguiente Página');
    } else if (currentPage === 2) {
      setCurrentPage(3);
      setButtonText('Inicio');
    } else {
      setCurrentPage(1);
      setButtonText('Siguiente Página');
    }
  };
  
  const pages = [(

    <motion.div 
    key={1}
    variants={fadeIn('left', 0.3)}
    initial='hidden'
    whileInView={'show'}
    viewport={{ once: false, amount:0.3}}
    className='flex-1'>
      {/** LISTA */}

        {services.map((service, index) => {
          // Desc Serv
          const {name, description, link} = service;
          return (
          <div 
            className='border-b border-white/20 h-[146px] mb-[38px] flex'
            key={index}>
              <div className='max-w-[476px]'>
                <h4 className='text-[20px] text-accent2 tracking-wider font-primary 
                font-semibold mb-6'>
                  {name}
                </h4>
                <p className='font-secondary leading-tight'>
                  {description}
                </p>
              </div>
              <div className='flex flex-col flex-1 items-end mt-[14px]'>
                <a href='#'
                className='btn w-9 h-9 mb-[42px] 
                flex justify-center items-center'>
                  <GrCertificate />
                </a>
                <p  className='text-gradient text-sm'>
                  {link}
                </p>
              </div>
          </div>
          );
        })}
          <div className='flex gap-x-8 items-center'>
          <button onClick={handlePageChange} className='btn btn-lg'>
            {buttonText}
          </button>

        </div>
      
    </motion.div>

  ),
  (
    <motion.div 
    key={2}
    variants={fadeIn('left', 0.3)}
    initial='hidden'
    whileInView={'show'}
    viewport={{ once: false, amount:0.3}}
    className='flex-1'>
      {/** LISTA */}

        {services2.map((service, index) => {
          // Desc Serv
          const {name2, description2, link2} = service;
          return (
          <div 
            className='border-b border-white/20 h-[146px] mb-[38px] flex'
            key={index}>
              <div className='max-w-[476px]'>
                <h4 className='text-[20px] tracking-wider font-primary 
                font-semibold mb-6 text-accent2'>
                  {name2}
                </h4>
                <p className='font-secondary leading-tight'>
                  {description2}
                </p>
              </div>
              <div className='flex flex-col flex-1 items-end'>
                <a href={link2}
                className='btn w-9 h-9 mb-[42px] 
                flex justify-center items-center'>
                  <GrCertificate />
                </a>
                <a href='#' className='text-gradient text-sm'>
                  {link2}
                </a>
              </div>
          </div>
          );
        })}
        
          {/* Botón para cambiar de página */}
          <div className='flex gap-x-8 items-center'>
          <button onClick={handlePageChange} className='btn btn-lg'>
            {buttonText}
          </button>

        </div>
      
    </motion.div> 
  ),
  (
    <motion.div 
    key={3}
    variants={fadeIn('left', 0.3)}
    initial='hidden'
    whileInView={'show'}
    viewport={{ once: false, amount:0.3}}
    className='flex-1'>
      {/** LISTA */}

        {services3.map((service, index) => {
          // Desc Serv
          const {name3, description3, link3} = service;
          return (
          <div 
            className='border-b border-white/20 h-[146px] mb-[38px] flex'
            key={index}>
              <div className='max-w-[476px]'>
                <h4 className='text-[20px] tracking-wider font-primary 
                font-semibold mb-6'>
                  {name3}
                </h4>
                <p className='font-secondary leading-tight'>
                  {description3}
                </p>
              </div>
              <div className='flex flex-col flex-1 items-end'>
                <a href='#'
                className='btn w-9 h-9 mb-[30px] 
                flex justify-center items-center'>
                  <GrCertificate />
                </a>
                <a href='#' className='text-gradient text-sm'>
                 
                </a>
              </div>
          </div>
          );
        })}
        
          {/* Botón para cambiar de página */}
          <div className='flex gap-x-8 items-center'>
          <button onClick={handlePageChange} className='btn btn-lg'>
            {buttonText}
          </button>

        </div>
      
    </motion.div>
  ),

   // Espacio para mas paginación
];

  return (
    <section className='section' id='services'>
      <div className='container mx-auto'>
        <div className='flex flex-col lg:flex-row'>
          {/** TEXT */}
          <motion.div 
          variants={fadeIn('right', 0.3)}
          initial='hidden'
          whileInView={'show'}
          viewport={{ once: false, amount:0.3}}
          className='flex-1 lg:bg-services lg:bg:bottom bg-no-repeat
          mix-blend-lighten mb-12 lg:mb-0'>
            <h2 className='h2 text-accent mb-6'>Estudios y Certificados</h2>
            <h3 className='h3 max-w-[455px] mb-16'>


            </h3>
            
          </motion.div>{/** FIN Motion */}
          {/** SERV */}
          {pages[currentPage - 1]} {/* Renderiza el contenido de la página actual */}
        </div>
      </div>
    </section>
  );
};

export default Services;
