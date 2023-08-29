import React, { useEffect } from "react";
import { fadeIn } from '../variants';
import { motion } from 'framer-motion';
import img5 from "../modals/img/pro1.png";
import {
    FaBootstrap,
    FaHtml5,
    FaSass,
    FaJs,
    FaAngular,
    FaReact,
    FaWindowClose,
    FaNodeJs
  } from "react-icons/fa";

const Modal = ({ open, onClose }) => {
  useEffect(() => {
    if (open) {
      // Bloquear el scroll al abrir el modal
      document.body.style.overflow = "hidden";
    } else {
      // Restaurar el scroll al cerrar el modal
      document.body.style.overflow = "auto";
    }

    return () => {
      // Asegurarse de restaurar el scroll cuando el componente se desmonta
      document.body.style.overflow = "auto";
    };
  }, [open]);

  if (!open) return null;

  return (
    <motion.div
            variants={fadeIn('center', 0.3)}
            initial='hidden'
            whileInView={'show'}
            viewport={{ once: false, amount: 0.9 }}
            className="modalContainer"
            >

    <div onClick={onClose} className="bg-black bg-opacity-50 fixed inset-0 z-60">
      <div onClick={(e) => {
        e.stopPropagation()
      }} className="modalContainer">
        <img className="modalImg" src={img5} alt="" />
        <div className="modalDerecha">
          <p onClick={onClose} className="btnCerrar text-[44px]">
            <FaWindowClose/>
          </p>
          <div className="contenido">
            <h2 className='h2 leading-tight text-accent font-extrabold'>Titulo del proyecto </h2>
            <div className="iconos1 flex justify-end  text-[40px] py-6 gap-x-3">
            <FaHtml5 />
            <FaHtml5 />
            <FaHtml5 />
            <FaHtml5 />
            </div>
            <h4 className='text-[20px] text-accent2 tracking-wider font-primary 
                font-bold'>Caracteristicas</h4>
            <ul class="list-disc list-inside">
                <li class="mb-3 py-4 border-white/20 font-four">Punto uno</li>
                <li class="mb-3 py-4 border-white/20 font-four">Punto uno</li>
                <li class="mb-3 py-4 border-white/20 font-four">Punto uno</li>
                <li class="mb-3 py-4 border-white/20 font-four">Punto uno</li>
                <li class="mb-3 py-4 border-white/20 font-four">Punto uno</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    </motion.div>
  );
};

export default Modal3;
