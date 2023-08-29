import React from 'react';
//img
import Image from '../assets/bannerprueba.png';
//iconos
import{FaGithub, FaYoutube, FaDribble, FaLinkedin} from 'react-icons/fa';
//animacion
import { TypeAnimation } from 'react-type-animation';
//motion
import { motion } from 'framer-motion';
//variantes
import { fadeIn} from '../variants';

const Banner = () => {
  return (
  <section className='min-h-[85vh] lg:min-h-[78vh] flex items-center' id='home'>
    <div className='container mx-auto'>
      <div className='flex flex-col gap-y-8 lg:flex-row lg:items-center
      lg:gap-x-12'>
        { }
        <div className='flex-1 text-center font-secondary lg:text-left'>
          <motion.h1 
          variants={fadeIn('up', 0.3)}
          initial='hidden'
          whileInView={'show'}
          viewport={{ once: false, amount: 0.7}}
          className='text-[55px] font-bold py-4 leading-[0.8] lg:text-[90px]'>
            !Hola¡<br/>  Bienvenido a mi portfolio 
          </motion.h1>
          <motion.div 
          variants={fadeIn('up', 0.4)}
          initial='hidden'
          whileInView={'show'}
          viewport={{ once: false, amount: 0.7}}
          className='mb-6 text-[36px] lg:text-[60px]
          font-secondary font-semibold uppercase leading-[1]'>
            <span className='mr-4 text-white py-3'>Soy Fran Moreno,<br/></span>
            <TypeAnimation sequence={[
              'Diseñador',
              2000,
              'Programador',
              2000,
              'Estudiante',
              2000,

            ]}
            speed={60}
            className='text-accent'
            wrapper='span'
            repeat={Infinity} 
            />
          </motion.div>
          <motion.p 
             variants={fadeIn('up', 0.5)}
             initial='hidden'
             whileInView={'show'}
             viewport={{ once: false, amount: 0.7}}
          className='mb-8 max-w-lg mx-auto lg:mx-0'>
            Parrafo para una breve descripcion si es necesario
          </motion.p>
          <motion.div 
            variants={fadeIn('up', 0.6)}
            initial='hidden'
            whileInView={'show'}
            viewport={{ once: false, amount: 0.7}}
            className='flex max-w-max gap-x-6 items-center mb-12 mx-auto lg:mx-0'>
            <button className='btn btn-lg'>Contacto</button>
            <a href='' className='text-gradient btn-link'>
              Descargr CV
            </a>
          </motion.div>
          {/* RRSS */}
          <motion.div 
            variants={fadeIn('up', 0.7)}
            initial='hidden'
            whileInView={'show'}
            viewport={{ once: false, amount: 0.7}}
            className='flex text-[30px] gap-x-10 max-w-max mx-auto lg:mx-0'>
            <a href='#'>
              <FaYoutube />
            </a>
            <a href='#'>
              <FaGithub />
            </a>
            <a href='#'>
              <FaLinkedin />
            </a>
          </motion.div>
        </div>
        {/* Imagen */}
        <motion.div 
          variants={fadeIn('down', 0.8)}
          initial='hidden'
          whileInView={'show'}
          className='hidden lg:flex flex-1 max-w-[320px] lg:max-w-[482px] rounded-full overflow-hidden'>
          <img src={Image} alt=''/>
        </motion.div>
      </div>
    </div>  
  </section>
  );
};

export default Banner;
