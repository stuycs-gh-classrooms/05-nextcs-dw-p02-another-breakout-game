class Grids{
  //int layout;//randomly decide a type of layout: pillars, square, and rows (0-2)
  Brick[][] Layout;
  Grids(int shape, int level){
    Layout = new Brick[width/25][height/50];
    generate(shape, level);
  }
  
  Grids(){
  }
  
  void generate(int shape, int level){
    if(shape == ROWS){//every other row(after the 
      for(int r = 0; r < Layout.length; r++){
        for(int c = 0; c < Layout[r].length; c++){
          if(r % 2 == 0){
            Layout[r][c] = new Brick(width/25 * r,height/50 * c, level);
          }
        }
      }
    }
    if(shape == PILLARS){
      for(int r = 0; r < Layout.length; r++){
        for(int c = 0; c < Layout[r].length; c++){
          if(c % 2 == 0){
            Layout[r][c] = new Brick(width/25 * r,height/50 * c, level);
          }
        }
      }
    }
    if(shape == BIGSQUARE){r
      for(int r = 0; r < Layout.length; r++){
          if(r >= 5 && r <= 15){
            for(int c = 0; c < Layout[r].length; c++){
              if(c >= 3 && c <= 7){
                 Layout[r][c] = new Brick(width/25 * r,height/50 * c, level);
              }
            }
          }
      }
    }
  }
      
      

}
