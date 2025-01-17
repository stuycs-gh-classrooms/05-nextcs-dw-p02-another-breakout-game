int ROWS = 0;
int PILLARS = 1;
Grids space;
Ball projectile;
void setup(){
  size(500,500);
  space = new Grids(1, 5);
  newProjectile();
}
void draw(){
  background(0);
  space.display();
  projectile.display();
  projectile.move();
}

void mousePressed(){
}
void newProjectile(){
  PVector b = new PVector(width/2, height/2);
  projectile = new Ball(b);
}
