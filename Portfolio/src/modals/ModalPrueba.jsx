import React, { useEffect, useState } from "react";
import { fadeIn } from "../variants";
import { motion } from "framer-motion";

import img5 from "../modals/img/bull.png";
import img8 from "../modals/img/bull1.png";
import img6 from "../modals/img/abull5.png";
import img7 from "../modals/img/abull6.png";
import img9 from "../modals/img/abull7.png";

import {
  FaHtml5,
  FaWindowClose,
  FaArrowRight,
  FaArrowLeft,
} from "react-icons/fa";

const ModalPrueba = ({ open, onClose }) => {
  const [currentImageIndex, setCurrentImageIndex] = useState(0);
  const images = [img5, img6, img7, img8, img9];

  const handlePrevClick = () => {
    if (currentImageIndex > 0) {
      setCurrentImageIndex(currentImageIndex - 1);
    }
  };

  const handleNextClick = () => {
    if (currentImageIndex < images.length - 1) {
      setCurrentImageIndex(currentImageIndex + 1);
    }
  };
  const currentImage = images[currentImageIndex];

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
      variants={fadeIn("center", 0.3)}
      initial="hidden"
      whileInView={"show"}
      viewport={{ once: false, amount: 0.9 }}
      className="modalContainer"
    >
      <div
        onClick={onClose}
        className="bg-black bg-opacity-50 fixed inset-0 z-60"
      >
        <div
          onClick={(e) => {
            e.stopPropagation();
          }}
          className="modalContainer"
        >
          <div className="imgContainer">
            <img className="modalImg" src={currentImage} alt="" />
            <div className="botonContenedor">
              <button
                onClick={handlePrevClick}
                className="btn w-9 h-9 mt-10 ml-2
              flex justify-center items-center"
                disabled={currentImageIndex === 0}
              >
                <i>
                  <FaArrowLeft />
                </i>
              </button>
              <button
                onClick={handleNextClick}
                className="btn w-9 h-9 mt-10 ml-2
              "
                disabled={currentImageIndex === images.length - 1}
              >
                <i
                  className="btn w-9 h-9 
                  flex justify-center items-center"
                >
                  <FaArrowRight />
                </i>
              </button>
            </div>
          </div>
          <div className="modalDerecha">
            <p onClick={onClose} className="btnCerrar text-[44px]">
              <FaWindowClose />
            </p>
            <div className="contenido">
              <h2 className="h2 leading-tight text-accent font-extrabold">
                Titulo del proyecto{" "}
              </h2>
              <div className="iconos1 flex justify-end  text-[40px] py-6 gap-x-3">
                <FaHtml5 />
                <FaHtml5 />
                <FaHtml5 />
                <FaHtml5 />
              </div>
              <h4
                className="text-[20px] text-accent2 tracking-wider font-primary 
                font-bold"
              >
                Caracteristicas
              </h4>
              <ul className="list-disc list-inside">
                <li className="mb-3 py-2 border-white/20 font-four">
                  Punto uno
                </li>
                <li className="mb-3 py-2 border-white/20 font-four">
                  Punto uno
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </motion.div>
  );
};

export default ModalPrueba;
