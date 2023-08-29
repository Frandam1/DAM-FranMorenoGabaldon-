


// //** ---------------------------Services con paginacion mal --------------------------------------------- */

// import React, { useState } from 'react';
// import { useInView } from 'react-intersection-observer';
// import { motion } from 'framer-motion';
// import { fadeIn } from '../variants';
// import { BsArrowUpRight } from 'react-icons/bs';

// const services = [
//   {
//     name: 'UI/UX Design1',
//     description: `Proyecto2 Descripcion del proyecto1.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Design2',
//     description: `Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Design3',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina2',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina2',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina2',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina3',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina3',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Pagina3',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },

//   // ... (agrega más servicios si es necesario)
// ];

// const Services = () => {
//   const [currentPage, setCurrentPage] = useState(1);

//   const handleNextPage = () => {
//     setCurrentPage(currentPage + 1);
//   };

//   const handlePreviousPage = () => {
//     setCurrentPage(currentPage - 1);
//   };

//   const itemsPerPage = 3;
//   const startIndex = (currentPage - 1) * itemsPerPage;
  

//   return (
//     <section className='section' id='services'>
//       <div className='container mx-auto'>
//         <div className='flex flex-col lg:flex-row'>
//           <motion.div
//             variants={fadeIn('left', 0.5)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1 lg:bg-services lg:bg-bottom bg-no-repeat mix-blend-lighten mb-12 lg:mb-0
//              'style={{ position: 'relative', left: 0, top: 0, bottom: 0 }}>
//             {/* Text */}
//             <h2 className='h2 text-accent mb-6'>Cosas que hago</h2>
//             <h3 className='h3 max-w-[455px] mb-16'>
//               Soy estudiante y blah blah
//             </h3>
//             <button className='btn btn-sm'>Mira mi curro</button>
//           </motion.div>
//           <motion.div
//             variants={fadeIn('right', 0.5)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1'>
//             {/* Lista de servicios */}
//             <div>
//               {services
//                 .slice((currentPage - 1) * 3, currentPage * 3)
//                 .map((service, index) => (
//                   <motion.div
//                     key={index}
//                     variants={fadeIn('right', 0.5)} // Animación fade-in desde la derecha
//                     initial='hidden'
//                     animate='show'
//                     className='border-b border-white/20 h-[146px] mb-[38px] flex'>
//                     <div className='max-w-[476px]'>
//                       <h4 className='text-[20px] tracking-wider font-primary font-semibold mb-6'>
//                         {service.name}
//                       </h4>
//                       <p className='font-secondary leading-tight'>
//                         {service.description}
//                       </p>
//                     </div>
//                     <div className='flex flex-col flex-1 items-end'>
//                       <a
//                         href='#'
//                         className='btn w-9 h-9 mb-[42px] flex justify-center items-center'>
//                         <BsArrowUpRight />
//                       </a>
//                       <a href='#' className='text-gradient text-sm'>
//                         {service.link}
//                       </a>
//                     </div>
//                   </motion.div>
//                 ))}
//             </div>
//             {/* Botones de paginación */}
//             <div className='flex justify-between items-center mb-4'>
//               <button
//                 onClick={handlePreviousPage}
//                 className={`btn btn-sm ${
//                   currentPage === 1 ? 'opacity-50 cursor-not-allowed' : ''
//                 }`}
//                 disabled={currentPage === 1}>
//                 Página Anterior
//               </button>
//               <button
//                 onClick={handleNextPage}
//                 className={`btn btn-sm ${
//                   currentPage === Math.ceil(services.length / itemsPerPage)
//                     ? 'opacity-50 cursor-not-allowed'
//                     : ''
//                 }`}
//                 disabled={currentPage === Math.ceil(services.length / itemsPerPage)}>
//                 Siguiente Página
//               </button>
//             </div>
//           </motion.div>
//         </div>
//       </div>
//     </section>
//   );
// };

// export default Services;


// /**  ------------------SECCION FUNCIONANDO---------------*/





//   import React, { useState } from 'react';
// import CountUp from 'react-countup';
// import { useInView } from 'react-intersection-observer';
// import { BsArrowUpRight, BsUiRadios } from 'react-icons/bs';
// import {motion} from 'framer-motion'
// import { fadeIn } from '../variants';


// const services = [
//   {
//     name: 'UI/UX Design1',
//     description: `Proyecto2 Descripcion del proyecto1.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Design1',
//     description: `Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },
//   {
//     name: 'UI/UX Design1',
//     description: `Proyecto2 Descripcion del proyecto3.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.
//                   Proyecto2 Descripcion del proyecto2.`,
//     link: 'LM',
//   },

  
// ];
 

// const Services = () => {

//   const [ref, inView] = useInView({
//     threshold: 0.5,
//   });

//   const [currentPage, setCurrentPage] = useState(1);
//   const [buttonText, setButtonText] = useState('Siguiente Página');

//   const handlePageChange = () => {
//     if (currentPage === 1) {
//       setCurrentPage(2);
//       setButtonText('Página Anterior');
//     } else {
//       setCurrentPage(1);
//       setButtonText('Siguiente Página');
//     }
//   };

//   const pages = [(

//     <motion.div 
//     key={1}
//     variants={fadeIn('left', 0.3)}
//     initial='hidden'
//     whileInView={'show'}
//     viewport={{ once: false, amount:0.3}}
//     className='flex-1'>
//       {/** LISTA */}

//       {services.map((service, index) => {
//         // Desc Serv
//         const {name, description, link} = service;
//         return (
//         <div 
//           className='border-b border-white/20 h-[146px] mb-[38px] flex'
//           key={index}>
//             <div className='max-w-[476px]'>
//               <h4 className='text-[20px] tracking-wider font-primary 
//               font-semibold mb-6'>
//                 {name}
//               </h4>
//               <p className='font-secondary leading-tight'>
//                 {description}
//               </p>
//             </div>
//             <div className='flex flex-col flex-1 items-end'>
//               <a href='#'
//               className='btn w-9 h-9 mb-[42px] 
//               flex justify-center items-center'>
//                 <BsArrowUpRight />
//               </a>
//               <a href='#' className='text-gradient text-sm'>
//                 {link}
//               </a>
//             </div>
//         </div>
//         );
//       })}
//         <div className='flex gap-x-8 items-center'>
//         <button onClick={handlePageChange} className='btn btn-lg'>
//           {buttonText}
//         </button>

//       </div>
    
//   </motion.div>

// ),
// (
//   <motion.div 
//   key={2}
//   variants={fadeIn('left', 0.3)}
//   initial='hidden'
//   whileInView={'show'}
//   viewport={{ once: false, amount:0.3}}
//   className='flex-1'>
//     {/** LISTA */}

//       {services.map((service, index) => {
//         // Desc Serv
//         const {name, description, link} = service;
//         return (
//         <div 
//           className='border-b border-white/20 h-[146px] mb-[38px] flex'
//           key={index}>
//             <div className='max-w-[476px]'>
//               <h4 className='text-[20px] tracking-wider font-primary 
//               font-semibold mb-6'>
//                 {name}
//               </h4>
//               <p className='font-secondary leading-tight'>
//                 {description}
//               </p>
//             </div>
//             <div className='flex flex-col flex-1 items-end'>
//               <a href='#'
//               className='btn w-9 h-9 mb-[42px] 
//               flex justify-center items-center'>
//                 <BsArrowUpRight />
//               </a>
//               <a href='#' className='text-gradient text-sm'>
//                 {link}
//               </a>
//             </div>
//         </div>
//         );
//       })}
      
//         {/* Botón para cambiar de página */}
//         <div className='flex gap-x-8 items-center'>
//         <button onClick={handlePageChange} className='btn btn-lg'>
//           {buttonText}
//         </button>

//       </div>
    
//   </motion.div> 
// ),

//  // Espacio para mas paginación
// ];

// return (
//   <section className='section' id='services'>
//     <div className='container mx-auto'>
//       <div className='flex flex-col lg:flex-row'>
//         {/** TEXT */}
//         <motion.div 
//         variants={fadeIn('right', 0.3)}
//         initial='hidden'
//         whileInView={'show'}
//         viewport={{ once: false, amount:0.3}}
//         className='flex-1 lg:bg-services lg:bg:bottom bg-no-repeat
//         mix-blend-lighten mb-12 lg:mb-0'>
//           <h2 className='h2 text-accent mb-6'>Estudios y Certificados</h2>
//           <h3 className='h3 max-w-[455px] mb-16'>


//           </h3>
          
//         </motion.div>{/** FIN Motion */}
//         {/** SERV */}
//         {pages[currentPage - 1]} {/* Renderiza el contenido de la página actual */}
//       </div>
//     </div>
//   </section>
// );
// };

// export default Services;

//  */
