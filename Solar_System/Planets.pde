class Planet {
  
  float x;
  float y;
  float d;
  float dx, dy;
  float sin, cos;
  float sin1, cos1;
  float speedx, speedy;
  float sp;
  
  float dp;
  float dpx, dpy;
  float sinp, cosp;
  float speedxp, speedyp;
  float s;
  
  Planet(float xVal, float yVal, float strengthp, float strength ) {
    x = xVal;
    y = yVal;
    s = strength;
    sp = strengthp;
  }
  
  void display() {
    fill(255);
    ellipse(x, y, 30, 30);
  }
  
  void calcDP() {
    d = sqrt(pow((mouseX - x), 2) + pow((mouseY - y), 2));
    
    dx = (mouseX - x);
    dy = (mouseY - y);
    
    sin = dx/d;
    cos = dy/d;
    
    sin1 = dy/d;
    cos1 = dx/d;
    
    dp = sqrt(pow((mouseX - x), 2) + pow((mouseY - y), 2));
    
  }
  
  void huirP() {
    calcDP();
    
    speedx = cos * sp;
    speedy = sin * sp;
    
    speedxp = cos1 * s;
    speedyp = sin1 * s;
   
    x -= speedx;
    y += speedy;
    
    x += speedxp;
    y += speedyp;

  }
    
  
}
