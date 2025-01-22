int numROWS = 10;
int numCOLS = 10;
int totalMines = 25;

int safeTile = 0;
int mineTile = 1;
boolean lose = false;
mineField grid;


void setup(){
  size(750,750);
  grid = new mineField(numROWS, numCOLS, totalMines);
  grid.generate();
  
}
void draw(){
 grid.checkLoss();

}
void mouseClicked(){
  println("Clicked");
  if(mouseButton == LEFT){
    grid.clicked(mouseX,mouseY,1);
  }
  if(mouseButton == RIGHT){
    grid.clicked(mouseX,mouseY,0);
  }
}
