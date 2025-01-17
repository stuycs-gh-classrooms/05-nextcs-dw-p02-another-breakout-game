class Grids{
  //int layout;//randomly decide a type of layout: pillars, square, and rows (0-2)
  Brick[][] Layout;
  Grids(int shape, int level){
    Layout = new Brick[width/10][height/10];
    
    generate(shape, level);
  }
  
  
  void generate(int shape, int level){
    if(shape == ROWS){//every other row(after the 
      for(int r = 0; r < Layout.length; r++){
        for(int c = 0; c < Layout[r].length; c++){
        //  Layout[r][c] = new Brick(width/ 10 * r,height/10 * c, level, 255);
          if(r % 2 == 0){
            Layout[r][c] = new Brick(width/10 * r,height/10 * c, level, 0);
          }
        }
      }
    }
    if(shape == PILLARS){
      for(int r = 0; r < Layout.length; r++){
        for(int c = 0; c < Layout[r].length; c++){
          if(c % 2 == 0){
            Layout[r][c] = new Brick(width/10 * r,height/10 * c, level, 0);
          }
        }
      }
    }
  }
      
      

}
