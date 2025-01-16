class Brick{
  int health;
  PVector corner;
  
  Brick(int x, int y, int h){
    health = h;
    corner = new PVector(x, y);
  }//when it's at 0, stop displaying 
  
  void display(int upperX, int upperY, int l, int w){
    rect(upperX,upperY,l,w);
  }
  
  
}
