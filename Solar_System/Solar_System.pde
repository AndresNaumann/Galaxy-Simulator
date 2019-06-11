Shape[] stars = new Shape[500];


Planet planets = new Planet(random(400, 500), random(500,600), 15/4, 1/4);
Planet mars = new Planet(random(100, 700), random(100, 700), 20/4, 1/10);

void setup() {
  fullScreen();
  
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Shape(random(0, width), random(0, height), 255, 100, 10, 2);
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
    stars[i].huir();
  }
  
  planets.display();
  planets.huirP();
  
  mars.display();
  mars.huirP();
 
  
}
