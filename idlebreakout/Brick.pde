class Brick{
  int health;
  PVector corner;
  int boxcolor;
  PVector center;
  boolean alive = true;
  Brick(int x, int y, int h, int bc){
    health = h;
    corner = new PVector(x, y);
    center = new PVector(x + 25 , y + 25);
    boxcolor = bc;
    display();
  }//when it's at 0, stop displaying 
  
  void display(){
    if(alive){
      stroke(boxcolor);
      square(corner.x, corner.y, 50);
    }
    else{
    stroke(boxcolor);
    }
    
  }
  
  void hit(){
    if(alive){
      alive = false;
    }
  }

  
}
