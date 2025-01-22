class patch{
  int size;
  PVector corner;
  int chance;
  int state;
  int flag = 0; //if this is 1, can't reveal

  patch(int _x, int _y, int sz, int cha) {
    corner = new PVector(_x, _y);
    size = sz;
    chance = cha;
  }
  void display(){
    stroke(0);
    fill(255);
    if(chance < totalMines){
      state = mineTile;
      //fill(255,0,0);//for proper generation checking
    }
    else{state = safeTile;}
    square(corner.x,corner.y,size);
  }
  
  void flagTile(){
    if(flag == 0){
      fill(0);
      square(corner.x + size/4, corner.y + size/4, size/2);
      flag = 1;
      println("flagged");
    }
    else{
      this.display();
      flag = 0;
      println("unflagged");
    }
  }
  void reveal(int surroundMines){
    if(flag == 0){//no flag?
      if(state == mineTile){
        fill(255,0,0);
        square(corner.x,corner.y,size);
        println("mine!");
        lose = true;
      }
      else{
        textSize(50);
        fill(0);
        text(surroundMines, corner.x + size*.35, corner.y + size * .7);
        
    }
    }
  }
  
}
