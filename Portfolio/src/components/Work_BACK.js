// import React from 'react';
// import { motion } from 'framer-motion'
// import { fadeIn } from '../variants';

// import Img1 from '../assets/portfolio-img1.png';
// import Img2 from '../assets/portfolio-img2.png';
// import Img3 from '../assets/portfolio-img3.png';

// const Work = () => {
//   return (
//     <section className='section' id='work'>
//       <div className='container mx-auto'>
//         <div className='flex flex-col lg:flex-row gap-x-10'>
//           <motion.div
//             variants={fadeIn('left', 0.5)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1 flex flex-col gap-y-12 mb-10 lg:mb-0'>
//             {/** TEXT */}
//             <div>
//               <h2 className='h2 leading-tight text-accent'>
//                 ULTIMO <br />
//                 TRABAJO
//               </h2>
//               <p className='max-w-sm mb-16'>
//                 Texto random,Texto random,Texto random,Texto random
              
//               </p>
//               <button className='btn btn-sm'> Ver todos los proyectos</button>
//             </div>
//             {/**IMAGEN */}
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img1} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//           </motion.div> {/** --------------------------  FIN PArte IZQUIERDA ------------------- */}
//           <motion.div
//             variants={fadeIn('right', 0.3)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1 flex flex-col gap-y-12 mb-10 lg:mb-0 justify-between'
//    >
//             {/**IMG 2 */}
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img2} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img3} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//           </motion.div> {/** --------------------------  FIN Primeros dos huecos ------------------- */}
//           <motion.div
//             variants={fadeIn('right', 0.3)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1 flex flex-col gap-y-12 mb-10 lg:mb-0 justify-between'
//    >
//             {/**IMG 2 */}
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img2} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img3} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//           </motion.div> {/** --------------------------  FIN Segundos dos huecos ------------------- */}
          
          
//         </div>
//       </div>
//     </section>
//   );
// };

// export default Work;



// /** DIV DOBLE
//  * 
//  *           <motion.div
//             variants={fadeIn('right', 0.3)}
//             initial='hidden'
//             whileInView={'show'}
//             viewport={{ once: false, amount: 0.3 }}
//             className='flex-1 flex flex-col gap-y-12 mb-10 lg:mb-0 justify-between'
//    >
//             {/**IMG 2 */}
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img2} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//             <div className='group relative overflow-hidden border-2 border-white/50
//             rounded-xl'>
//               {/**OVERLAY */}
//               <div className='group-hover:bg-black/70 w-full h-full absolute
//               z-40 transition-all duration-300'></div>
//               {/**IMAGEN */}
//               <img
//                 className='group-hover:scale-125 transition-all duration-500'
//                 src={Img3} alt='' />
//               {/**PRETTY */}
//               <div
//                 className='absolute -bottom-full left-12 group-hover:bottom-24
//               transition-all duration-500 z-50'>
//                 <span className='text-gradient'>UI/UX DISEÑO</span>
//               </div>
//               {/**PRETTY */}
//               <div className='absolute -bottom-full left-12 group-hover:bottom-14
//               transition-all duration-700 z-50'>
//                 <span className='text-3xl text-white'>TITUOLO</span>
//               </div>
//             </div>
//           </motion.div> {/** --------------------------  FIN Segundos dos huecos ------------------- */} 
//  */


/*



















*/