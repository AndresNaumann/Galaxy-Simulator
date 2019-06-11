class Shape {
  
  float s;
  
  float d;
  float x, y;
  float dx, dy;
  float sin, cos;
  float speedx, speedy;
  
  float noot;
  
  float sins;
  float coss;
  
  float speedX, speedY;
  float a;
  
  float dec = -4;
  
  float dp;
  float dxp, dyp;
  float sinp, cosp;
  float speedxp, speedyp;
  
  float dp1;
  float dxp1, dyp1;
  float sinp1, cosp1;
  float speedxp1, speedyp1;
  
  float sinps, cosps;
  float sinps1, cosps1;
  
  float speedXp, speedXp1;
  float speedYp, speedYp1;
  
  float size;
  
  Shape(float x1, float y1, float alpha, float n, float soup, float thickness) {
    noot = n;
    a = alpha;
    x = x1;
    y = y1;
    s = soup;
    size = thickness;
  }
  
  void display() {

    noStroke();
    
    
    fill(255,255,255);
    ellipse(mouseX, mouseY, 40, 40);
    
    fill(255,255,0);
    ellipse(x, y, size, size);
    
  }
  
  void calcD() {
    d = sqrt(pow((mouseX - x), 2) + pow((mouseY - y), 2));
    
    dx = (mouseX - x);
    dy = (mouseY - y);
    
    sin = dy/d;
    cos = dx/d;
    
    sins = dx/d;
    coss = dy/d;
    
    dp = sqrt(pow((planets.x - x), 2) + pow((planets.y - y), 2));
    
    dxp = planets.x - x;
    dyp = planets.y - y;
    
    sinp = dxp/dp;
    cosp = dyp/dp;
    
    sinps = dyp/dp;
    cosps = dxp/dp;
    
    dp1 = sqrt(pow((mars.x - x), 2) + pow((mars.y - y), 2));
    
    dxp1 = mars.x - x;
    dyp1 = mars.y - y;
    
    sinp1 = dxp1/dp1;
    cosp1 = dyp1/dp1;
    
    sinps1 = dyp1/dp1;
    cosps1 = dxp1/dp1;
  }
  
  
  void huir() {
    calcD();
    
    //Succ of Mouse (Black hole)
    
    speedx = cos * s/8;
    speedy = sin * s/8;
    
    //Spin of Mouse
    
    speedX = coss * s;
    speedY = sins * s;
    
    //Spin of Planets
    
    speedxp = cosp * planets.sp/(dp/200);
    speedyp = sinp * planets.sp/(dp/200);
    
    //succ of Planets
    
    speedXp = cosps * planets.sp/10;
    speedYp = sinps * planets.sp/10;
    
    //Spin of Mars
    
    speedxp1 = cosp1 * mars.sp/(dp1/200);
    speedyp1 = sinp1 * mars.sp/(dp1/200);
    
    speedXp1 = cosp1 * mars.sp/10;
    speedYp1 = sinp1 * mars.sp/10;
    
    //Succ of Mars
    
    //Succ and Spin of Mouse
    
    x += speedx;
    y += speedy;
    
    x += speedX;
    y -= speedY;
    
    //Succ and Spin of Planets
    
    x += speedxp;
    y -= speedyp;
    
    x += speedXp;
    y += speedYp;
    
    //Succ and Spin of Mars
    
    x += speedxp1;
    y -= speedyp1;
    
    x += speedXp1;
    y += speedYp1;


   }
}
