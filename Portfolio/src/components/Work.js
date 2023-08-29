import React, { useState } from "react";
import CountUp from "react-countup";
import { motion } from 'framer-motion'
import { useInView } from "react-intersection-observer";
import { fadeIn } from '../variants';
import Modal from '../modals/Modal';


import Img1 from '../modals/img/proyectosprueba.png';
import Img2 from '../assets/proyectosprueba.png';
import Img3 from '../assets/proyectosprueba.png';




const Work = () => {

  const [openModal, setOpenModal] = useState(false)


  const [ref, inView] = useInView({
    threshold: 0.5,
  });

  const [currentPage, setCurrentPage] = useState(1);
  const [buttonText, setButtonText] = useState("Siguiente Página");

  const handlePageChange = () => {
    if (currentPage === 1) {
      setCurrentPage(2);
      setButtonText("Soft-Skills");
    } else {
      setCurrentPage(1);
      setButtonText("Competencias");
    }
  };

  

  const pages = [
    <motion.div
    key={1}
            variants={fadeIn('right', 0.3)}
            initial='hidden'
            whileInView={'show'}
            viewport={{ once: false, amount: 0.3 }}
            className='flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between'
   >
            {/**IMG 2 */}
            <div className='group  relative overflow-hidden border-2 border-white/50
            rounded-xl'>
              {/**OVERLAY */}
              <div className='group-hover:bg-black/70 w-full h-full absolute
              z-40 transition-all duration-300'></div>
              {/**IMAGEN */}
              <img
                className='group-hover:scale-125 transition-all duration-500'
                src={Img2} alt='' />
              {/**PRETTY */}
              <div
                className='absolute -bottom-full left-12 group-hover:bottom-24
              transition-all duration-500 z-50'>
                <span className='text-gradient'>Proyecto2</span>
              </div>
              {/**PRETTY */}
              <div className='absolute -bottom-full left-12 group-hover:bottom-14
              transition-all duration-700 z-50'>
                <span className='text-3xl text-white'>Crud1</span>
                <button 
                onClick={() => setOpenModal(true)}
                className="absolute -bottom-full left-0">Modal</button>  
              </div>
            </div>
            <div className='group relative overflow-hidden  border-2 border-white/50
            rounded-xl'>
              {/**OVERLAY */}
              <div className='group-hover:bg-black/70 w-full h-full absolute
              z-40 transition-all duration-300'></div>
              {/**IMAGEN */}
              <img
                className='group-hover:scale-125 transition-all duration-500'
                src={Img3} alt='' />
              {/**PRETTY */}
              <div
                className='absolute -bottom-full left-12 group-hover:bottom-24
              transition-all duration-500 z-50'>
                <span className='text-gradient'>Proyecto3</span>
              </div>
              {/**PRETTY */}
              <div className='absolute -bottom-full left-12 group-hover:bottom-14
              transition-all duration-700 z-50'>
                <span className='text-3xl text-white'>CRUD2</span>
                <button 
                onClick={() => setOpenModal(true)}
                className="btn absolute -bottom-full left-0">Modal</button>  
                <Modal open={openModal} onClose={() => setOpenModal(false)} />
              </div>
            </div>
          </motion.div>,
          <motion.div
          key = {2}
          variants={fadeIn('right', 0.3)}
          initial='hidden'
          whileInView={'show'}
          viewport={{ once: false, amount: 0.3 }}
          className='flex-1 flex flex-col gap-y-10 mb-10 lg:mb-0 justify-between'
 >
          {/**IMG 2 */}
          <div className='group  relative overflow-hidden border-2 border-white/50
          rounded-xl'>
            {/**OVERLAY */}
            <div className='group-hover:bg-black/70 w-full h-full absolute
            z-40 transition-all duration-300'></div>
            {/**IMAGEN */}
            <img
              className='group-hover:scale-125 transition-all duration-500'
              src={Img2} alt='' />
            {/**PRETTY */}
            <div
              className='absolute -bottom-full left-12 group-hover:bottom-24
            transition-all duration-500 z-50'>
              <span className='text-gradient'>Proyecto3</span>
            </div>
            {/**PRETTY */}
            <div className='absolute -bottom-full left-12 group-hover:bottom-14
            transition-all duration-700 z-50'>
              <span className='text-3xl text-white'>Crud1</span>
              <button 
                onClick={() => setOpenModal(true)}
                className="btn absolute -bottom-full left-0">Modal</button>
                <Modal open={openModal} onClose={() => setOpenModal(false)} />  
            </div>
          </div>
          <div className='group relative overflow-hidden  border-2 border-white/50
          rounded-xl'>
            {/**OVERLAY */}
            <div className='group-hover:bg-black/70 w-full h-full absolute
            z-40 transition-all duration-300'></div>
            {/**IMAGEN */}
            <img
              className='group-hover:scale-125 transition-all duration-500'
              src={Img3} alt='' />
            {/**PRETTY */}
            <div
              className='absolute -bottom-full left-12 group-hover:bottom-24
            transition-all duration-500 z-50'>
              <span className='text-gradient'>Proyecto4</span>
            </div>
            {/**PRETTY */}
            <div className='absolute -bottom-full left-12 group-hover:bottom-14
            transition-all duration-700 z-50'>
              <span className='text-3xl text-white'>CRUD2</span>
              <button 
                onClick={() => setOpenModal(true)}
                className="btn absolute -bottom-full left-0">Modal</button>  
                <Modal open={openModal} onClose={() => setOpenModal(false)} />
          
            </div>
          </div>
        </motion.div>, {/** --------------------------  FIN Primeros dos huecos ------------------- */}
  ];




  return (
    <section className='section' id='work'>
      <div className='container mx-auto'>
        <div className='flex flex-col lg:flex-row gap-x-10'>
          <motion.div
            variants={fadeIn('left', 0.5)}
            initial='hidden'
            whileInView={'show'}
            viewport={{ once: false, amount: 0.3 }}
            className='flex-1 flex flex-col gap-y-12 mb-10 lg:mb-0'>
            {/** TEXT */}
            <div>
              <h2 className='h2 leading-tight text-accent'>
                ULTIMO <br />
                TRABAJO
              </h2>
              <p className='max-w-sm mb-16'>
                Texto random,Texto random,Texto random,Texto random
              
              </p>
              <button onClick={handlePageChange} className="btn btn-lg">
            {buttonText}
          </button>
            </div>
            <div className='group relative overflow-hidden border-2 border-white/50
            rounded-xl mt-10'>
              {/** ----------------CARD ------------------------------*/}
              <div className='group-hover:bg-black/70 w-full h-full absolute
              z-40 transition-all duration-300'></div>
              {/**----------------IMAGEN-CARD ------------------------------ */}
              <img
                className='group-hover:scale-125 transition-all duration-500'
                src={Img1} alt='' />
              {/**----------------TITULO CARD ------------------------------ */}
              <div
                className='absolute -bottom-full left-12 group-hover:bottom-24
              transition-all duration-500 z-50'>
                <span className='text-gradient'>Proyecto1</span>
              </div>
              {/**----------------DESCRIPCION CARD ------------------------------ */}
              <div className='absolute -bottom-full left-12 group-hover:bottom-14
              transition-all duration-700 z-50'>
                <span className='text-3xl text-white'>MODAL</span>
                <button 
                onClick={() => setOpenModal(true)}
                className="btn absolute -bottom-full left-0">Modal</button>             
              </div>
            </div>
            <Modal open={openModal} onClose={() => setOpenModal(false)} />
          </motion.div> {/** --------------------------  FIN PArte IZQUIERDA ------------------- */}
          {pages[currentPage - 1]}{" "}
         
         
          
          
        </div>
      </div>
    </section>
  );
};

export default Work;
