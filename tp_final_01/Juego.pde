class Juego {

  //PROPIEDADES (variables)
  int estado;
  int c = 10;


  Dana jugador;
  Fuego[] fuego;
  Escenario fondo;


  //CONSTRUCTOR (setup del objeto)
  Juego(int cantidad) {
    c = cantidad;
    estado = 0;
    // inicializar los ojetos: jugador,fuego
    jugador = new Dana(width/2, 300, 100);
    //declaro la dimension de los arreglos
    fuego = new Fuego[c];
    //inicializo los objetos de los arreglos
    for (int i = 0; i<c; i++) {
      fuego[i] = new Fuego (-100, -100, 100);

      fondo = new Escenario (0, 0);
    }
  }
  
  //Getters y Setters
   Dana getJugador(){
    return jugador;
  }

  //METODOS (funciones)
  //actualizar()
  void update () {

    for (int i = 0; i<c; i++) {
      fuego [i].update();
    }

    //deduzco si hay colision
    jugador.colision(fuego, fondo, fondo);
    fondo.actualizar();
  }

  //dibujar()
  void dibujar () {
  
    fondo.dibujarJuego();

    jugador.dibujar(fondo, fondo);
    jugador.mover();

    for (int i = 0; i<c; i++) {
      fuego [i].dibujarFuego(fondo);
    }
    
    
  }


  //resetear()
  void reciclar() {
    for (int i = 0; i<c; i++) {
      fuego [i].dibujarFuego(fondo);
    }
  }

    void teclas(int k) {
    if (k == RIGHT) {
      jugador.setMoverDer(true);
    } else if (k == LEFT) {
      jugador.setMoverIzq(true);
    }
  }

  void click() {
    fondo.click(fondo,jugador);
  }

}
