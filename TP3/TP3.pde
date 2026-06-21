
// link : https://youtu.be/Rvtk1DE4ays


PImage referencia;

int cantidadInicial = 18;
int cantidad = cantidadInicial;

float controlMouse = 0;
boolean reiniciado = true;

void setup() {

  size(800, 400);

  referencia = loadImage("36.jpg.jpg");
}

void draw() {

  background(0);

  // imagen izquierda
  if (referencia != null) {
    image(referencia, 0, 0, 400, 400);
  }

  // detectar interacción del mouse
  if (mouseX > 0) {
    reiniciado = false;
  }

  // control de rotación 
  if (reiniciado) {
    controlMouse = 0;
  } else {
if (mouseX > 400) {
  controlMouse = map(mouseX, 400, width, 0, 20);
} else {
  controlMouse = 0;
}
  }

  // lado derecho
  pushMatrix();

  translate(600, 200);

  for (int i = 0; i < cantidad; i++) {
    dibujarCuadrado(i);
  }

  popMatrix();

  // FOR ANIDADO 
  for (int y = 0; y < height; y += 20) {
    for (int x = 400; x < width; x += 20) {

      float d = dist(x, y, mouseX, mouseY);
      float r = map(d, 0, 250, 255, 0);

      fill(r);
      noStroke();

      ellipse(x, y, 3, 3);
    }
  }
}


// FUNCION SIN RETORNO


void dibujarCuadrado(int i) {

  pushMatrix();

  float angulo = calcularAngulo(i);

  rotate(radians(angulo));

  float tam = 350 - (i * 22);
  tam += random(-2, 2);
  if (i % 2 == 0) {
    fill(255);
  } else {
    fill(0);
  }

  noStroke();
  rectMode(CENTER);
  rect(0, 0, tam, tam);

  popMatrix();
}


// FUNCION CON RETORNO


float calcularAngulo(int i) {
  return i * controlMouse;
}


// TECLADO


void keyPressed() {

  if (key == '+' || key == '=') {
    cantidad++;
  } 
  else if (key == '-') {
    cantidad--;

    if (cantidad < 4) {
      cantidad = 4;
    }
  } 
  else if (key == 'r' || key == 'R') {
    reiniciar();
  }
}


// REINICIO REAL

void reiniciar() {

  cantidad = cantidadInicial;
  controlMouse = 0;
  reiniciado = true;
}
