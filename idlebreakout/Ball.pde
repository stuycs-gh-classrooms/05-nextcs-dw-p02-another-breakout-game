class Ball{
  PVector center;
  int xspeed = 1;
  int yspeed = 1;
  Ball(PVector c){
    center = new PVector(c.x, c.y);
  }
  
  void display(){
    circle(center.x, center.y, 30);
  }
  
   void move() {
    if (center.x > width - 15 || center.x < 15) {
        xspeed*= -1;
     }
     if (center.y > height - 15 || center.y < 15) {
         yspeed*= -1;
      }
     center.x+= xspeed;
     center.y+= yspeed;
  }
  
  void collisionCheck(Brick other) {
    if(this.center.dist(other.center)  <= 40){
      other.hit();
    };
  }//collisionCheck
  
  
  
  
  
}
