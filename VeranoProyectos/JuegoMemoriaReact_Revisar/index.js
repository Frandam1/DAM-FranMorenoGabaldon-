class GenNumero extends React.Component {
    componentDidUpdate() {
      let time, digit;
      // Incrementa el numero en funcion del nivel
      digit = this.props.level.main + 2;
      time = 100 * Math.min(digit, 5) + 400 * Math.max(digit - 5, 0);
  
      let numero = document.getElementById('numero');
      setTimeout(function () {
        numero.innerHTML = numero.innerHTML.replace(/\w/gi, '&#183;');
      }, time);
    }
  
    componentDidMount() {
      let numero = document.getElementById('numero');
      setTimeout(function () {
        numero.innerHTML = numero.innerHTML.replace(/\w|\W/gi, '&#183;');
      }, 1200);
    }
  
    render() {
      return (
        //Render el numero en la caja
        React.createElement("div", { className: "numero-caja" },
          React.createElement("div", { className: "info-box" },
            React.createElement("p", { className: "level" }, "Level: ", this.props.level.main, " - ", this.props.level.sub),
            React.createElement("p", { className: "errores" }, "Error!: ", this.props.wrong, "/3")
          ),
          React.createElement("p", { className: "divider" }, "-----------------------------------------------------"),
          React.createElement("p", { className: "numero", id: "numero" }, this.props.wrong < 3 ? atob(this.props.question) : '????'),
          React.createElement("p", { className: "divider" }, "-----------------------------------------------------")
        )
      );
    }
  }
  
  class InputNumber extends React.Component {
    constructor() {
      super();
      //Enlazamos los event landers a la instancia del componente
      this.handleUserinput = this.handleUserinput.bind(this);
      this.handleReset = this.handleReset.bind(this);
    }
  
    handleUserinput(e) {
      e.preventDefault();
      // Recibe el input del usuario
      let userNumber = btoa(this.userNumber.value);
      this.userNumber.value = "";
      // Le pasamos el input del componente para la comparacion
      this.props.compareUserInput(userNumber);
    }
  
    handleReset() {
      // Llama a la funcion reset 
      this.props.onReset();
    }
  
    render() {
      let layout;
      if (this.props.wrong < 3) {
        // Render la input box si el usuairo no comete 3 errores
        layout = React.createElement("div", { className: "input-box" },
          React.createElement("form", { onSubmit: this.handleUserinput }, "El numero es:",
            React.createElement("input", {
              pattern: "[0-9]+",
              type: "text",
              ref: ref => this.userNumber = ref,
              required: true,
              autoFocus: true,
            }),
            React.createElement("br", null),
            React.createElement("br", null)),
          React.createElement("button", { onClick: this.handleReset }, "Restart")
        );
      } else {
        // notifica en caso de cometer 3 fallos 
        layout = React.createElement("div", { className: "notif-box" },
          React.createElement("div", { className: "notif" }, "Intentalo otra vez!!"),
          React.createElement("br", null),
          React.createElement("br", null),
          React.createElement("button", { onClick: this.handleReset }, "Restart")
        );
      }
      return layout;
    }
  }
  
  class App extends React.Component {
    constructor() {
      super();
      // Unimos los manejadores de eventos a las instancias de los compoenentes
      this.compareUserInput = this.compareUserInput.bind(this);
      this.randomGenerate = this.randomGenerate.bind(this);
      this.resetState = this.resetState.bind(this);
      // Declaramos el estado inicial del componente
      this.state = {
        question: btoa(this.randomGenerate(2)),
        level: { main: 1, sub: 1 },
        wrong: 0
      };
    }
    resetState() {
        // Resetea el estado del componente al valor inicial
        this.setState({
          question: btoa(this.randomGenerate(2)),
          level: { main: 1, sub: 1 },
          wrong: 0
        });
      }

    randomGenerate(digit) {
        let max = Math.pow(10, digit) - 1,
            min = Math.pow(10, digit - 1);
        // generamos un numero dentro del rango especificado
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    compareUserInput(userNumber) {
      let currQuestion = this.state.question;
      let mainLevel = this.state.level.main;
      let subLevel = this.state.level.sub;
      let wrong = this.state.wrong;
      let digit;
      // Comparamos el input del usuario con el numero generado actual
      if (userNumber == currQuestion) {
        // Si es correcto
        if (subLevel < 3) {
          ++subLevel;
        } else if (subLevel === 3) {
          // Incrementa el nivel si sub level llega a 3
          ++mainLevel;
          subLevel = 1;
        }
      } else {
        // Si el usuario no acierta, incrementa la cuenta de errores
        ++wrong;
      }
      digit = mainLevel + 2;
      //Actualiza el estado con la nueva pregunta, nivel y conteo de errores
      this.setState({
        question: btoa(this.randomGenerate(digit)),
        level: { main: mainLevel, sub: subLevel },
        wrong: wrong
      });
    }
  
    render() {
      return (
        // Crea el componente principal
        React.createElement("div", { className: "main" },
          React.createElement(GenNumero, {
            question: this.state.question,
            level: this.state.level,
            wrong: this.state.wrong
          }),
          React.createElement(InputNumber, {
            compareUserInput: this.compareUserInput,
            wrong: this.state.wrong,
            onReset: this.resetState
          }))
      );
    }
  }
  
  // Crear el compoenente principal en el html cojn el id "app"
  ReactDOM.render(
    React.createElement(App, null),
    document.getElementById('app')
  );
  

