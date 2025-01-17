class Brick{
  int health;
  PVector corner;
  int boxcolor;
  
  Brick(int x, int y, int h, int bc){
    health = h;
    corner = new PVector(x, y);
    boxcolor = bc;
    display();
  }//when it's at 0, stop displaying 
  
  void display(){
    stroke(boxcolor);
    square(corner.x, corner.y, 50);
  }
  
  
}
