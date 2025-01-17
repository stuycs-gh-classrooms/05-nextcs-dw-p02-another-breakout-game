class Ball{
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;
  Ball(PVector c, int s){
    bsize = s;
    center = new PVector(c.x, c.y);
  }
  
  void display(){
    circle(width/2,height/2, 8);
  }
  
  
  
  
  
}
