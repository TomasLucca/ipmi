int miVariable = 1000;

float miRect = random(10,180);

String texto = " la casa de asterion JORGE LUIS BORGES";

PImage img;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

PImage play;
PImage restart;

PFont fuente;

int pantalla = 0;
int tiempo;

float x1=100;
float y1=50;

float x2=400;
float y2=200;

float x3=250;
float y3=120;

float x4=120;
float y4=150;

float x5=630;
float y5=0;

float x6=541;
float y6=3;

float x7=500;
float y7=0;

float x8=480;
float y8=0;

void setup(){

size(640,480);

background(20);

textSize(30);

println(frameCount);

fuente = loadFont("SitkaSmall-Bold-32.vlw");
textFont(fuente);

img = loadImage("JorgeLuisBorges.jpg");

img1 = loadImage("1asterion en el laberinto.jpg");

img2 = loadImage("2asterion postrado entre columnas.jpg");

img3 = loadImage("3asterion y la ofrenda esperada.jpg");

img4 = loadImage("4asterion y su eterna prision.jpg");

img5 = loadImage("5asterion.jpg");

play = loadImage("play pixel.jpg");

restart = loadImage("restart pixel.jpg");

tiempo = millis();

}

void draw(){

background(0);

fill(255);

// pantalla play

if(pantalla==0){

fill(255,255,180);

ellipse(x1,y1,8,8);
ellipse(x2,y2,10,10);
ellipse(x3,y3,6,6);
ellipse(x4,y4,7,7);
ellipse(x5,y5,10,10);
ellipse(x6,y6,8,8);
ellipse(x7,y7,6,6);
ellipse(x8,y8,9,9);

y1=y1+1;
y2=y2+2;
y3=y3+1.5;
y4=y4+1.2;
y5=y5+1;
y6=y6+1;
y7=y7+1.7;
y8=y8+1.6;

if(y1>height){y1=0;}
if(y2>height){y2=0;}
if(y3>height){y3=0;}
if(y4>height){y4=0;}
if(y5>height){y5=0;}
if(y6>height){y6=0;}
if(y7>height){y7=0;}
if(y8>height){y8=0;}

fill(255);

textSize(20);

text("la casa de asterion",222,150);

image(play,220,210,200,100);

}

else{

background(20);

if(millis()-tiempo>5000 && pantalla>0 && pantalla<7){

pantalla++;

tiempo=millis();

}

if(pantalla==1){

miVariable = frameCount/2;

println(frameCount);

image(img,320,240,200,200);

image(img2,150,240,200,200);

text(texto,width/2-textWidth(texto)/2,120);

}

// pantalla 2

if(pantalla==2){

image(img1,0,125,width,height-125);

fill(255);
fill(255,0,0);
text("1 asterion en el laberinto",222,60);

fill(255);
textSize(18);
text("asterion vive solo dentro de un laberinto",40,80);

text("inmenso del cual no puede escapar, se lo acusa de soberbia",40, 105);

}

// pantalla 3

if(pantalla==3){

image(img2,0,125,width,height-125);
fill(255,0,0);
text("postrado entre columnas",222,60);

fill(255);
textSize(18);
text("el minotauro recorre eternamente", 40, 80);

text("su prision entre patios y columnas", 40, 105);
}

// pantalla 4

if(pantalla==4){

image(img3,0,125,width,height-125);
fill(255,0,0);
text("la ofrenda esperada",222,60);

fill(255);
textSize(18);
text("cada 9 años llegan 9 hombres ", 40, 80);

text("destinados al sacrificio.", 40, 105);

}

// pantalla 5

if(pantalla==5){

image(img4,0,125,width,height-125);
fill(255,0,0);
text("su eterna prision",222,60);
 
 fill(255);
 textSize(18);
 text(" juega y juega en su eterna prision", 40, 80);
 
 text("asterion está atrapado para siempre.", 40, 105);

}

// pantalla 6

if(pantalla==6){
fill(255,0,0);
image(img5,0,125,width,height-125);

text("el minotauro",210,60);

fill(255);
textSize(18);
text("finalmente comprendemos que...", 40, 80);

text("Asterion era el minotauro", 40, 105);

}

// pantalla final

if(pantalla==7){

background(0);

fill(255,255,180);

ellipse(x1,y1,8,8);
ellipse(x2,y2,10,10);
ellipse(x3,y3,6,6);
ellipse(x4,y4,7,7);
ellipse(x5,y5,10,10);
ellipse(x6,y6,8,8);
ellipse(x7,y7,6,6);
ellipse(x8,y8,9,9);

y1=y1+1;
y2=y2+2;
y3=y3+1.5;
y4=y4+1.2;
y5=y5+1;
y6=y6+1;
y7=y7+1.7;
y8=y8+1.6;

if(y1>height){y1=0;}
if(y2>height){y2=0;}
if(y3>height){y3=0;}
if(y4>height){y4=0;}
if(y5>height){y5=0;}
if(y6>height){y6=0;}
if(y7>height){y7=0;}
if(y8>height){y8=0;}

textSize(50);

fill(255);

text("FIN",280,120);

image(restart,220,220,200,100);

}

}

}

void mousePressed(){

if(pantalla==0){

if(mouseX>220 && mouseX<420 &&
   mouseY>210 && mouseY<310){

pantalla=1;

tiempo=millis();

}

}

if(pantalla==7){

if(mouseX>220 && mouseX<420 &&
   mouseY>220 && mouseY<320){

pantalla=0;

tiempo=millis();

}

}

}
