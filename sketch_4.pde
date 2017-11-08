
maria maria1;
maria maria2;
maria maria3;
maria maria4;
maria maria5;
maria j1;
maria j2;

int pantalla = 0;
int jugador1;
int jugador2;
PImage m1,m2,m3,m4,m5;
PImage c1,c2,c3,c4,c5;
PImage instrucciones,seleccion1,seleccion2,inicio,resultado;
PImage fondo;

PFont titulo;
int turno = 0;
int ganador = 0;
int contador1 = 0;
int contador2 = 0;

void setup(){
size(1200,600);
background(0);
//Imagenes--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
inicio = loadImage("inicio.png");
instrucciones = loadImage("instrucciones.png");
seleccion1 = loadImage("seleccion1.png");
seleccion2 = loadImage("seleccion2.png");
fondo = loadImage("fondo.jpg");
resultado = loadImage("resultado.png");
m1 = loadImage("m1.png");
m2 = loadImage("m2.png");
m3 = loadImage("m3.png");
m4 = loadImage("m4.png");
m5 = loadImage("m5.png");

c1 = loadImage("c1.png");
c2 = loadImage("c2.png");
c3 = loadImage("c3.png");
c4 = loadImage("c4.png");
c5 = loadImage("c5.png");


maria1 = new maria("Citlalicue",200,7,9,13,0,0);
maria2 = new maria("Aquetzalli",200,8,10,13,1,1);
maria3 = new maria("Ketzaly",200,7,9,13,2,2);
maria4 = new maria("Maria",200,7,9,13,3,3);
maria5 = new maria("Ix Chel",200,7,9,13,4,4);
}

//---------------------------------------------------------------------------------------------------------------
void draw(){
  
switch(pantalla){
  case 0:
  inicio();
  break;
  
  case 1:
  instrucciones();
  break;
  
  case 2:
  seleccion1();
  break;
  
  case 3:
  seleccion2();
  break;
  
  case 4:
  lucha();
  break;
  
  case 5:

  resultado();
  break;
  }
}
//clase -----------------------------------------------------------------------------------------------------
class maria {
  String nombre;
  int salud;
  int golpe1;
  int golpe2;
  int golpex;
  int mascara;
  int perfil;
  
  maria(String nombre_, int salud_, int golpe1_, int golpe2_, int golpex_, int mascara_, int perfil_)
  {
    nombre = nombre_;
    salud = salud_;
    golpe1 = golpe1_;
    golpe2 = golpe2_;
    golpex = golpex_;
    mascara = mascara_;
    perfil = perfil_;
  }
  //-------------------------------------------------------------------------
void Dibujar(){
    switch(mascara){
    case 0:
    image(c1,0,0);
    break;
    case 1:
    image(c2,0,0);
    break;
    case 2:
    image(c3,0,0);
    break;
    case 3:
    image(c4,0,0);
    break;
    case 4:
    image(c5,0,0);
    break;
    }
  }
  //----------------------------------------------------------------------------
  void perfiles(){
    switch(perfil){
    case 0:
    image(m1,0,0);
    break;
    case 1:
    image(m2,0,0);
    break;
    case 2:
    image(m3,0,0);
    break;
    case 3:
    image(m4,0,0);
    break;
    case 4:
    image(m5,0,0);
    break;
    }
  }
  
}
//------------------------------------------------------------------------------
// inicio
void inicio(){
background(inicio);
//image(inicio,0,0);
if(mousePressed){
pantalla=1;
  }
}

//-------------------------------------------------------------------------------
// intrucciones
void instrucciones(){
background(instrucciones);
if(keyPressed){
    pantalla=2;
  }
}
//-------------------------------------------------------------------------------
//selección del primer personajes
void seleccion1(){
background(seleccion1);
fill(#ff0000);

textSize(30);
text("Selecciona tu personaje",250,70);
textSize(30);
fill(0);
text("Jugador Uno",400,110);
if(keyPressed){
  if(key == '1'){
   j1 = maria1;
  jugador1 = 0;
  pantalla=3;  
  }
  else if(key == '2'){
   j1 = maria2;
  jugador1 = 1;
  pantalla=3;  
  }
  else if(key == '3'){
  j1 = maria3;
  jugador1 = 2;
  pantalla=3;  
  }
  else if(key == '4'){
  j1 = maria4; 
  jugador1 = 3;
  pantalla=3;  
  }
  else if(key == '5'){
   j1 = maria5;
  jugador1 = 4;
  pantalla=3;  
  }
}
}

//----------------------------------------------------------------------
// seleccion del personajes 2

void seleccion2(){
background(seleccion2);
fill(#ff0000);

textSize(25);
text("Selecciona tu personaje",30,60);
textSize(30);
fill(0);
text("Jugador Dos",650,70);
if(keyPressed){
  if(key == '6'){
  j2 = maria1;
  jugador2 = 0;
  pantalla=4;  
  }
  else if(key == '7'){
  j2 = maria2;
  jugador2 = 1;
  pantalla=4;  
  }
  else if(key == '8'){
  j2 = maria3;
  jugador2 = 2;
  pantalla=4;  
  }
  else if(key == '9'){
  j2 = maria4;
  jugador2 = 3;
  pantalla=4;  
  }
  else if(key == '0'){
  j2 = maria5;
  jugador2 = 4;
  pantalla=4;  
  }
  }
}

//--------------------------------------------------------------------------------
// pelea
void lucha(){
  background(fondo);
  
 if(jugador1 == 0){
    pushMatrix();
    maria1.Dibujar();
    maria1.perfiles();
    popMatrix();
  }
  else if(jugador1 == 1){
    pushMatrix();
    maria2.Dibujar();
    maria2.perfiles();
    popMatrix();
  }
  else if(jugador1 == 2){
    pushMatrix();
    maria3.Dibujar();
    maria3.perfiles();
    popMatrix();
  }
  else if(jugador1 == 3){
    pushMatrix();
    maria4.Dibujar();
    maria4.perfiles();
    popMatrix();
  }
    else if(jugador1 == 4){
    pushMatrix();
    maria5.Dibujar(); 
    maria5.perfiles();
    popMatrix();
  }
//----------------------------------------------------------personajes del Jugador
if(jugador2 == 0){
     pushMatrix();
     translate(700,0);
     maria1.perfiles();
     popMatrix();
     
    pushMatrix();
    translate(400,0);
    maria1.Dibujar();  
    popMatrix();
    }
    else if(jugador2 == 1){
     pushMatrix();
     translate(700,0);
     maria2.perfiles();
     popMatrix();
     
    pushMatrix();
    translate(400,0);
    maria2.Dibujar();  
    popMatrix();  
  }
    else if(jugador2 == 2){
           pushMatrix();
     translate(700,0);
     maria3.perfiles();
     popMatrix();
     
    pushMatrix();
    translate(400,0);
    maria3.Dibujar();  
    popMatrix();  
  }
    else if(jugador2 == 3){
     pushMatrix();
     translate(700,0);
     maria4.perfiles();
     popMatrix();
     
    pushMatrix();
    translate(400,0);
    maria4.Dibujar();  
    popMatrix();   
  }
    else if(jugador2 == 4){
           pushMatrix();
     translate(700,0);
     maria5.perfiles();
     popMatrix();
     
    pushMatrix();
    translate(400,0);
    maria5.Dibujar();  
    popMatrix();  
  }

//----------------------------------------------------------turnos
 if(turno == 0){
    if(keyPressed){
      if(key == 'z'){
      j2.salud = j2.salud - j1.golpe1;
      
      turno = 1;
      contador1++;
      }
      else if(key == 'x'){
      j2.salud = j2.salud - j1.golpe2;
      turno = 1;
      contador1++;
      }
      if(j2.salud <= 0){
      pantalla = 5;
      }
    }
  }
  
    if(turno == 1){
    if(keyPressed){
      if(key == 'b'){
      j1.salud = j1.salud - j2.golpe1;
      turno= 0 ;
      contador2++;
      }
      else if(key == 'n'){
      j1.salud = j1.salud - j2.golpe2;
      turno = 0;
      contador2++;
      }
      if(j1.salud <= 0){
      pantalla = 5;
      }
    }
  }
    if(contador1 == 4){
    fill(#ff0000);
    text("ATAQUE ESPECIAL",150,100);
    if(keyPressed){
      if(key == 'c'){
      j2.salud = j2.salud - j1.golpex;
      turno = 1;
      contador1 = 0;
      }
      if(j2.salud <= 0){
      pantalla = 5;
   }
}
}
   if(contador2 == 4){
    fill(#ff0000);
    text("ATAQUE ESPECIAL",950,100);
    if(keyPressed){
      if(key == 'm'){
      j1.salud = j1.salud - j2.golpex;
      turno = 0;
      contador2 = 0;
      }
      if(j1.salud <= 0){
      pantalla = 5;
   }
}
}
    if(turno == 0){
    fill(255);
    textSize(20);
    text("TU TURNO",10,100);
    }
    else {
    fill(255);
    textSize(20);
    text("TU TURNO",850,100);
    }
   if(turno == 0){
    fill(#4682B4);  
    }
    else{
    fill(#191970);
    }
    quad(0,0,0,70,330,70,350,0);
    
    if(turno == 1){
    fill(#98fb98);
    }
    else{
    fill(#006400);
    }
    quad(1200,0,1200,70,870,70,850,0);
    
    fill(255);
    textSize(20);
    text(j1.nombre,10,30);
    text(j2.nombre,850,30);
    if(j1.salud >= 0 && j1.salud <= 70){
    fill(#ff0000);
    }
    else if(j1.salud > 70 && j1.salud <= 130){
    fill(#ffff00);
    }
    else{
    fill(#00ff00);
    }
    noStroke();
    pushMatrix();
    scale(0.7);
    translate(0,20);
    rect(0,50,j1.salud*2.5,20);
    popMatrix();
    
    if(j2.salud >= 0 && j2.salud <= 70){
    fill(#ff0000);
    }
    else if(j2.salud > 70 && j2.salud <= 130){
    fill(#ffff00);
    }
    else{
    fill(#00ff00);
    }
    noStroke();
        pushMatrix();
    scale(0.7);
    translate(420,20);
    rect(800,50,j2.salud*2.5,20);
    popMatrix();
}
//----------------------------------------------------------------resultado final
void resultado(){
  background(resultado);
  if(j1.salud > 0){

textSize(30);
fill(0);
text(j1.nombre,150,450);
pushMatrix();
translate(600,-150);
scale(2);
j1.Dibujar();
popMatrix();
}
else {
  textSize(30);
  fill(0);
text(j2.nombre,200,450);
pushMatrix();
translate(600,-150);
scale(2);
j2.Dibujar();
popMatrix();
}
    fill(255);
    textSize(20);
    text("Presione r para reintentar",200,500);
    if(keyPressed){
      if(key == 'r'){
      pantalla = 0;
      j1.salud=200;
      j2.salud=200;
      }
    }

}