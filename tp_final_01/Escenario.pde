class Escenario {
  Boton boton;

  //PROPIEDADES(VARIABLES)

  PFont font1, font2;
  PImage[] fondo = new PImage [8];
  String estado;
  int p=1;
  float x, y;
  
   Boton boton1;

  // CONSTRUCTOR (setup)
  Escenario (float x_, float y_) {
    x = x_;
    y = y_;

    for (int i = 0; i <fondo.length; i++) {
      fondo[i] = loadImage ("fon_0"+i+".png");
    }

    font1 = loadFont ("OldLondon-48.vlw");
    font2 = loadFont ("VCROSDMono-48.vlw");
    
     boton1 = new Boton ("INICIAR", /*font2,*/ width/2, height/2-40, 150, 50, 45);

    estado = "juego";
  }

  //METODOS (funciones)
  void dibujar () {
    image(fondo[7], x, y, 800, 400);
  }
  void dibujarJuego () {
    noStroke();
     dibujar();
      //cuadro texto
      recTexto(color(0, 100), width/2, 400, width, 70);
      texto(font2, color(255), 20);
      text("Evita los ataques: <- ->", width/2, 390);
      
    if (estado.equals("juego")) {
     
      p = 1;
      
    }
    
  }

  void actualizar() {
      reciclar();
  }

  void reciclar() {
    p = 1;
  }


  void click (Escenario e, Dana d) {
    //botón inicio
    if (p == 1) {
      if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 160) && (mouseY < 160+50)) {
        e.cambiarEstado("juego");
        d.reciclarVar();
      }
    }
  }

  //texto
  void texto(PFont font, color ct, int sizeT) {
    fill (ct);
    textFont (font);
    textSize (sizeT);
  }

  //rectangulo de texto
  void recTexto(color cr, float posXr, float posYr, float wr, float hr) {
    fill (cr);
    rectMode(CENTER);
    rect (posXr, posYr, wr, hr);
  }

  float getEscena() {
    return p;
  }

  void cambiarEstado(String nuevoEstado) {
    estado = nuevoEstado;
  }

  String getEstado() {
    return estado;
  }
}
