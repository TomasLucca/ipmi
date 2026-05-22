// la casa de asterion
int miVariable = 1000;
float miRect = random(10, 180);
String texto = " la casa de asterion JORGE LUIS BORGES";
PImage  img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PFont fuente;
void setup(){
  
size(640, 480);
background(20);
textSize(30);
textFont(fuente);
println(frameCount);
 img = loadImage("JorgeLuisBorges.jpg");
 img1 = loadImage ("1asterion en el laberinto.jpg");
 img2 = loadImage("2asterion postrado entre columnas.jpg");
 img3 = loadImage("3asterion y la ofrenda esperada.jpf");
 img4 = loadImage("4asterion y su eterna prision.jpg");
 img5 = loadImage("5asterion.jpg"); 
}
void draw (){
  miVariable = frameCount / 2 ;
  println(frameCount);
  image(img, 120, 120, 100, 100);
  text(texto, width / 2-
  
  textWidth (texto) / 2, miVariable);
 
}
    
