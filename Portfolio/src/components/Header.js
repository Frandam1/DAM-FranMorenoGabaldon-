import React from 'react';

//Imagenes

import Logo from '../assets/logo.svg';

const Header = () => {
  return (
    <header className='py-8'>
      <div className='container mx-auto'>
        <div className='flex justify-between items-center'>
          {/** 
          <a href='#'>
            <img src={Logo} alt=''/>
          </a>
          */}
          <h1 className='h1 text-accent text-[30px] font-bold leading-[0.8]'>
            Francisco <br/> Moreno
          </h1>
          {/**<button className='btn btn-sm'>Proyectos</button> */}
          <h1 className='h1 text-accent text-[30px] font-bold leading-[0.8]'>
            Tecnico Superior DAM
          </h1>
        </div>
      </div>
    </header>
  );

};

export default Header;
