PImage miImagen;

void setup(){
size (800,400);
miImagen = loadImage("escultura.jpg");
}

void draw (){
  background(200);
  image(miImagen, 0, 0, 400, 400);
  line( 0, 0, 0, 0);
  fill(250);

  fill(200);
  rect(400, 364, 400, 800);
  fill(250);
  rect(571, 230, 80, 100);
 
  fill(250);
  rect(480, 345, 200, 18);
  rect(490, 344, 176, -16);
 
  ellipse(600, 289, 330, 80);
    ellipse(606, 150, 200, 177);
     ellipse(610, 140, 30, 10);
  ellipse(660, 140, 25, 10);
  triangle(660, 170, 646, 151, 628, 171);
  fill(240);
  ellipse(524, 201, 30, 20);
  ellipse(513, 183, 30, 20);
  ellipse(502, 164, 30, 20);
  ellipse(505, 145, 30, 20);
  ellipse(508, 126, 30, 20);
  ellipse(511, 107, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);
  ellipse(528, 90, 30, 20);

  textSize(10);
  fill(0);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
