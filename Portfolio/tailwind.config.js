module.exports = {
  content: ['./src/**/*.{js,jsx,ts,tsx}'],
  theme: {
    fontFamily: {
      // Fuentes
      primary: 'Krub',
      secondary: 'Rajdhani',
      tertiary: 'Aldrich',
      four: 'Montserrat'
    },
    container: {
      padding: {
        DEFAULT: '15px',
      },
    },
    screens: {
      sm: '640px',
      md: '768px',
      lg: '960px',
      xl: '1200px',
    },
    extend: {
      colors: {
        primary: '#0a0a0a',
        // Color acento
        accent: '#ffcc66',
        accent2: '#1dbaee'
        
      },
      backgroundImage: {
        // BG Imagen
        site: "url('./assets/bg-blue.jpg')",
        // Imagen frente
        about: "url('./assets/aboutprueba.png')",
        // Imagen Trabajando
        services: "url('./assets/servicesprueba.png')",
      },
    },
  },
  plugins: [],
};
