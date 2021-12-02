class Aventura {
  Juego juego;
  Fondo [] fondoAv = new Fondo [9];

  Texto dialogos;
  Boton botonIniciar, botonCredito, botonSig, boton1, boton2, boton3, botonHuir, botonLlevar, botonSi, botonNo, botonVolver;

  Personaje [] persAv = new Personaje [20];

  //propiedades
  int pantalla = 0;

  //Constructor
  Aventura() {
    //Juego
    juego = new Juego(10);


    //Fondos de aventura
    for (int i = 0; i < fondoAv.length; i++) {
      fondoAv[i] = new Fondo("fon_0" + i);
    }

    //Botones
    botonIniciar = new Boton("Iniciar", width/2, 200, 200, 80, 35);
    botonCredito = new Boton("Créditos", 70, 360, 80, 70, 25);
    botonSig = new Boton("Siguiente", 735, 370, 120, 40, 20);
    boton1 = new Boton("Camino 1", 110, 80, 110, 70, 30);
    boton2 = new Boton("Camino 2", 110, 165, 110, 70, 30);
    boton3 = new Boton("Camino 3", 110, 250, 110, 70, 30);
    botonHuir = new Boton("Huir", 150, 80, 110, 70, 30);
    botonLlevar = new Boton("Llevarse \n el huevo", 650, 80, 110, 70, 30);
    botonSi = new Boton("SI", 150, 80, 110, 70, 30);
    botonNo = new Boton("NO", 650, 80, 110, 70, 30);
    botonVolver = new Boton("Volver", 735, 370, 120, 40, 20);

    //Texto/dialogo
    dialogos = new Texto();

    //Personajes
    for ( int i = 0; i < persAv.length; i++) {
      persAv[i] = new Personaje("per_0" + i);
    }
  }

  //Metodos
  void dibujar() {
    // println(pantalla);
    switch(pantalla) {
    case 0:
      //Fondo
      fondoAv[0].dibujarFondo(0, 0, width, height);

      //Text
      dialogos.textoFuenteOld("El ingrediente misterioso", width/2, 100, 255, 80, CENTER);

      //botones INICIAR/Créditos
      botonIniciar.actualizar();
      botonCredito.actualizar();
      break;

    case 1:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[0].dibujarPer1( -100, -50);

      //Texto
      dialogos.recTexto(0, 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Fenris", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(0, width/2, 350, width, 100);
      dialogos.textoFuenteOld("Dana, tengo que irme de viaje por unos días, debes de hacer un \n hechizo de barrera de protección para que La Torre este protegida \n en mi ausencia", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 2:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[4].dibujarPer1( 50, -10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Dana", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Ok, necesitamos pelo de unicornio, lágrima de hada, hueso de \n dragón y...no se ve el último ingrediente", 400, 330, 255, 25, CENTER);

      //Boton siguiente
      botonSig.actualizar();
      break;

    case 3:
      //Fondo
      fondoAv[1].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Estarossa", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Ni modo, tenemos que salir a buscar el último ingrediente, uno \n que luzca fundamental y especial", 400, 330, 255, 25, CENTER);

      //Boton siguiente
      botonSig.actualizar();
      break;

    case 4:
      //Fondo
      fondoAv[0].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[1].dibujarPer2( 500, 30, 300, 300);

      //Texto
      dialogos.recTexto(color(0), 70, 350, 100, 50);
      dialogos.textoFuenteVcr("Dana", width/11, 350, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 380, width, 60);
      dialogos.textoFuenteOld("¿Qué camino deberíamos escoger?", 400, 380, 255, 25, CENTER);

      //3 botones de caminos (Camino 1,2 3)
      boton1.actualizar();
      boton2.actualizar();
      boton3.actualizar();
      break;

    case 5:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[5].dibujarPer1( 0, 50);
      persAv[7].dibujarPer2( 400, 170, 395, 204);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 6:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[5].dibujarPer1( 0, 50);
      persAv[7].dibujarPer2( 400, 170, 395, 204);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoFuenteVcr("Ganso", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("Cuack cuack \n (Nadie puede acercarse al gran huevo)", width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 7:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[2].dibujarPer2( 200, -90, 700, 700);
      persAv[1].dibujarPer2( 150, 40, 300, 300);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 100, 50);
      dialogos.textoFuenteVcr("Dana", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("No sé que dice pero ¿qué hacemos?", width/2, 370, 255, 25, CENTER);

      //botones Huir/Llevarse el huevo
      botonHuir.actualizar();
      botonLlevar.actualizar();
      break;

    case 8:
      //Fondo
      fondoAv[2].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[8].dibujarPer1( 150, -30);
      persAv[7].dibujarPer2( 400, 170, 395, 204);
      persAv[2].dibujarPer2( -200, -100, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 100, 50);
      dialogos.textoFuenteVcr("Estarossa", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("Nooo, el huevo se rompió y se abrió un portal", width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 9:
      //Fondo
      fondoAv[8].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[9].dibujarPer2( 300, 200, 20, 29);
      persAv[2].dibujarPer2( 100, 30, 80, 80);

      //Texto
      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteVcr(".", 0, 0, 255, 25, CENTER);
      dialogos.textoFuenteVcr("Estarossa: Lindo lugar ¿no crees? \n Dana: Cállate", width/2, 370, 255, 25, CENTER);

      //botones Otra vez/Créditos
      botonCredito.actualizar();
      botonVolver.actualizar();
      break;

    case 10:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[11].dibujarPer1( -20, 0);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Estarossa", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("No te acerques Dana, él es Mael, hizo algo gatastrófico, él... se \n comió mis Whiskas", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 11:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[12].dibujarPer1( 150, 0);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Mael", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Yo no me comí tus Whiskas, para ese tiempo yo estaba de viaje en \n Camelot", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 12:
      //Fondo
      fondoAv[3].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Estarossa", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Ah, tienes razón... de todos modos, estamos buscando un ingrediente \n secreto", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 13:
      //Fondo
      fondoAv[4].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[10].dibujarPer1(250, 40);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Mael", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Tsss ¿ingrediente secreto? Secreto es este lugar JAJAJA... \n ups, se supone que no podía decirlo", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 14:
      //Fondo
      fondoAv[5].dibujarFondo(0, 0, width, height);

      //Personaje
      persAv[13].dibujarPer1(250, 10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Carbonilla", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Bienvenidos al Mundo Ghibli, un mundo mágico y secreto donde puedes \n encontrar de todo, así que ¿en qué los puedo ayudar?", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 15:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[1].dibujarPer2( 30, 20, 300, 300);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Dana", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Hola, tengo que hacer un hechizo de una barrera de protección, pero \n no sé cual es el último ingrediente", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 16:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[14].dibujarPer1( 250, 10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Carbonilla", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("¡Ajá! Este es el ingrediente multifuncional, es una poción \n que puede reemplazar a cualquier elemento", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 17:
      //Fondo
      fondoAv[5].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[2].dibujarPer2( -150, -130, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Estarossa", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("Es perrrfecto, muchas gracias, ahora Dana podrá hacer el hechizo \n y así proteger La Torre", 400, 330, 255, 25, CENTER);

      //botones Otra vez/Créditos
      botonVolver.actualizar();
      break;

    case 18:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[1].dibujarPer2( 30, 50, 300, 300);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoFuenteVcr("Dana", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("Parece que hay un campamento aquí", width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 19:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[16].dibujarPer1( 250, 10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 110, 50);
      dialogos.textoFuenteVcr("Fueguito", 70, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), 400, 350, width, 90);
      dialogos.textoFuenteOld("¡No!¡Ayúdame! Dame madera, hojas secas algo que sirva por favor \n o si no me consumiré y moriré", 400, 340, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 20:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[2].dibujarPer2( -150, -110, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoFuenteVcr("Estarossa", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("¿Ayudamos?", width/2, 370, 255, 25, CENTER);

      //botones Sí/No
      botonSi.actualizar();
      botonNo.actualizar();
      break;

    case 21:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[17].dibujarPer1( 250, 10);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoFuenteVcr("Fueguito", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("*Ñam ñam ñam*", width/2, 370, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 22:
      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[18].dibujarPer1( 250, 10);

      //Texto
      dialogos.recTexto(color(0), 70, 290, 100, 50);
      dialogos.textoFuenteVcr("Calcifer", width/11, 290, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 350, width, 100);
      dialogos.textoFuenteOld("JAJAJA pequeños ilusos, soy Calcifer, el demonio fuego, ahora que \n estoy en forma podré apoderarme de La Torre JAJAJA", 400, 330, 255, 25, CENTER);

      //Boton Siguiente
      botonSig.actualizar();
      break;

    case 23:
      //Aqui va el jueguito
      
      
      juego.update();
      juego.dibujar();

      //Ganar / perder
      if (juego.getJugador().getTermino()){ //<>//
        println("entro al if para encontrar la pantalla");
        pantalla = 25;
      }
      
      if (juego.getJugador().getVidas() == 0){
        
        pantalla = 24;
      }

      break;

    case 24:
      //No/Perder

      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Personaje
      persAv[1].dibujarPer2( 30, 10, 300, 300);
      persAv[2].dibujarPer2( 0, -100, 700, 700);

      //Texto
      dialogos.recTexto(color(0), 70, 330, 110, 50);
      dialogos.textoFuenteVcr("Dana", 70, 330, 255, 20, CENTER);

      dialogos.recTexto(color(0), width/2, 370, width, 70);
      dialogos.textoFuenteOld("No quiero enfrentarme a eso, mejor vámonos", width/2, 370, 255, 20, CENTER);

      //boton volver a pantalla caminos (4)
      botonVolver.actualizar();
      break;

    case 25:
      //Pantalla ganar = los fuegos huyeron

      //Fondo
      fondoAv[6].dibujarFondo( 0, 0, width, height);

      //Texto
      dialogos.recTexto(color(0, 100), width/2, height/2, width, 100);
      //dialogos.textoFuenteOld(".", dialogos.getFont2(), 0, 0, 255, 20, CENTER);
      dialogos.textoFuenteVcr("¡Felicidades! Lograste esquivar los ataques del demonio fuego, \n Calcifer, pero aún así, este no es el camino correcto", width/2, height/2, 255, 20, CENTER);

      //botones Otra vez/Créditos
      botonCredito.actualizar();
      botonVolver.actualizar();
      break;

    case 26:
      //Fondo
      fondoAv[0].dibujarFondo( 0, 0, width, height);

      //Texto
      //dialogos.textoD(".", dialogos.getFont1(), width/2, 100, 255, 80, CENTER);
      dialogos.textoFuenteOld("El ingrediente misterioso", width/2, 100, 255, 20, CENTER);

      dialogos.textoFuenteVcr("PERSONAJES", width/2, 130, 255, 20, LEFT);
      dialogos.textoFuenteVcr("Fenris, el elfo \n Dana, la aprendiz de magia \n Salem, el gato \n Mael, el otro gato", 80, 160, 255, 20, LEFT);
      dialogos.textoFuenteVcr("El ganso \n La carbonilla \n Calcifer, el demonio fuego", 450, 160, 255, 20, CENTER);

      dialogos.textoFuenteVcr("DATOS", width/2, 240, 255, 20, LEFT);
      dialogos.textoFuenteVcr("Prof. Matias Jauregui Lorda \n Comisión 2", 80, 270, 255, 20, LEFT);
      dialogos.textoFuenteVcr("Ibañez, Magalí Luz \n 88140/8 \n Calizaya Villamonte, Angela \n 88298/2", 450, 270, 255, 20, LEFT);

      //dialogos.textoD("Presiona 'r' para reiniciar el juego", dialogos.getFont2(), 100, 390, 70, 30, LEFT);

      //Volver a pantalla principal (0)
      botonVolver.actualizar();
      break;
    }
  }

  void click() {
    switch(pantalla) {
    case 0:
      println("pantalla = 0");
      if (botonIniciar.mouseEstaEncima()) {
        pantalla = 1;
      } else if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      }
      break;
    case 1:
      println("pantalla = 1");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 2;
      }
      break;
    case 2:
      println("pantalla = 2");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 3;
      }
      break;
    case 3:
      println("pantalla = 3");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 4;
      }
      break;
    case 4:
      println("pantalla = 4");
      if (boton1.mouseEstaEncima()) {
        pantalla = 5;
      } else if (boton2.mouseEstaEncima()) {
        pantalla = 10;
      } else if (boton3.mouseEstaEncima()) {
        pantalla = 18;
      }
      break;
    case 5:
      println("pantalla = 5");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 6;
      }
      break;
    case 6:
      println("pantalla = 6");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 7;
      }
      break;
    case 7:
      println("pantalla = 7");
      if (botonHuir.mouseEstaEncima()) {
        pantalla = 4;
      } else if (botonLlevar.mouseEstaEncima()) {
        pantalla = 8;
      }
      break;
    case 8:
      println("pantalla = 8");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 9;
      }
      break;
    case 9:
      println("pantalla = 9");
      if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      } else if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;

    case 10:
      println("pantalla = 10");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 11;
      }
      break;
    case 11:
      println("pantalla = 11");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 12;
      }
      break;
    case 12:
      println("pantalla = 12");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 13;
      }
      break;
    case 13:
      println("pantalla = 13");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 14;
      }
      break;
    case 14:
      println("pantalla = 14");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 15;
      }
      break;
    case 15:
      println("pantalla = 15");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 16;
      }
      break;
    case 16:
      println("pantalla = 16");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 17;
      }
      break;
    case 17:
      println("pantalla = 17");
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;

    case 18:
      println("pantalla = 18");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 19;
      }
      break;
    case 19:
      println("pantalla = 19");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 20;
      }
      break;
    case 20:
      println("pantalla = 20");
      if (botonSi.mouseEstaEncima()) {
        pantalla = 21;
      } else if (botonNo.mouseEstaEncima()) {
        pantalla = 24;
      }
      break;
    case 21:
      println("pantalla = 21");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 22;
      }
      break;
    case 22:
      println("pantalla = 22");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 23;
        juego.getJugador().reciclarVar();
      }
      break;
    case 23:
      println("pantalla = 23");
      //if (botonSig.mouseEstaEncima()) {
      //}
      break;
    case 24:
      println(pantalla = 24);
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 4;
      }
      break;
    case 25:
      println("pantalla = 25");
      if (botonCredito.mouseEstaEncima()) {
        pantalla = 26;
      } else if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    case 26:
      println("pantalla = 26");
      if (botonVolver.mouseEstaEncima()) {
        pantalla = 0;
      }
      break;
    default:
      println("no se encontro pantalla");
      break;
    }
  }

  void mover() {
    juego.teclas(keyCode);
  }
}
