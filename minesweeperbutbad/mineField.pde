class mineField {
  patch[][] MField;
  int numMines;

  mineField (int rows, int cols, int mines){
    MField = new patch[rows][cols];
    numMines = mines;
  }
  
  void generate(){
    int minesSpawned = 0;
    if(minesSpawned < numMines){ //are there not enough mines?
      for(int r = 0; r < MField.length; r++){
          for(int c = 0; c < MField[r].length; c++){
            if(minesSpawned < numMines){ //secondary check, just in case if the num of mines already has spawned.
              MField[r][c] = new patch( int(width/MField[r].length) * c, int(height/MField.length) * r,  int(height/MField.length),  int(random(numROWS * numCOLS)));
              MField[r][c].display();
            }
          }
      }
    }
            
  }
  void clicked(int mX, int mY, int action){
    int c = floor(mX * numCOLS/ width);
    int r = floor(mY * numROWS / height);
    int surroundMines = 0; 
    if(action == 1){
      int[] directions = {-1, 0, 1};
      for(int i = 0; i < directions.length; i++){
        if((directions[i] + r) != -1  && (directions[i] + r) <= MField.length - 1){
          
          for(int j = 0; j < directions.length; j++){
            if((directions[j] + c) != -1 && (directions[j] + c) <= MField[r].length - 1){
              println(directions[i], directions[j]);
              if(MField[r + directions[i]][c + directions[j]].state == mineTile){
                surroundMines++;
              }
            }
          }
        }
      }
      
      println(surroundMines);
      MField[r][c].reveal(surroundMines);
    }
    else{
      MField[r][c].flagTile();
    }
  }
  void checkLoss(){
    if(lose){
      //println("lose!");
      for(int r = 0; r < MField.length; r++){
          for(int c = 0; c < MField[r].length; c++){
            if(MField[r][c].state == mineTile){
              MField[r][c].reveal(0);
            }
          }
      }
    }
  }
      
}
