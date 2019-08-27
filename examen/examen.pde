void setup() {
  size(700, 700);
}
int centro=350; 
int diametro=100;
int med=450;
int x =0; 
int speed = 1;     // decraramos variables de yipo entero

void draw() {
  stroke(0);
  line(width/2, 0, width /2, height); // decrare una linea justo en el centro de la pantalla de visualizacion

  if (mouseX <  width /2 && mouseY < 700) {   // decrare un condicionla if donde si la posicion en x es menor a la mitad del size y la posicion en y sea menor a 700 entraria a otra condicion
    if (!mousePressed) { // se creao un if anidado si esta condicion donde si  no  se preciosa el mouse
      fill( 0, 0, 255);
      ellipse(width/2, height/2, 100, 100); // crearia una elipce justo en el centro 
    } else {           // pero si se mantiene  precionado el mouse 
      background(#17E8C0); // la pantalla de visualizacion se tornara de colo como turqueza
      fill(random(0, 250), random(0, 255), random(0, 255)); // se crea un rectangulo donde su color sera random y su posicicon sera de acuerdo con la posicion del mouse tanto en x como y
      rect(mouseX, mouseY, 350, 350);
    } 
  } else {       // si la primera condicion no se cumple 
    stroke(0);

    background(0);
    fill(random(0, 250));
    rect(mouseX, mouseY, 250, 250); // se crea un rectangulo de igual manera que su posicion sera acorde con la posicion del mouse

    x = x +speed;  // inicimos uso de la variable x yle sumammos la variable speed 
    if ((x > width) || (x < 0)) {  // de igual manera creamos otro if anidado donde si el valor de la variable en x es menor al ancho de la pantalla 
      speed = speed * -1; // ya que el valor en x esta sumado al valor en la variable speed, esto creara que el valor en x se valla aumnetando
    } // Display circle at x location 
    stroke(0);
    fill(random(0, 250), random(0, 255), random(0, 255));
    ellipse(x, 350, 100, 100);  // se crea una ellipse que su posisicion en x es la varaible x y esta esta anteriormente sumada al valor de speed, esto permitira que su vaor vaya aumenteando y se vaya desplazando en su valor en x
    
    // conclusion  es un programa en donde en la parta antes de a mitad si su posicion del mause se presio se crea un rectangulo si no se preciosa los objetos en esa parte se quedaran fijos y si en la otra parte se crea una ellipse que se va desplazando en su eje x 
  }
}
