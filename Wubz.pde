//declare classes
player1 p1;
player2 p2;

void setup() {
  size (400,400);
  background (255);
  noStroke();
  
  println ("Press SPACE to start");
  
  //inicialize classes
  p1 = new player1();
  p2 = new player2();
}

//inicialize variables
  float fade = 0;
  boolean start = false;
  float randomMove = random(0,4);
  int move1 = 0;
  int move2 = 0;
  int move3 = 0;
  int move4 = 0;
  

void keyPressed(){
  //if SPACE is pressed, then start = true
  if (key == ' '){
  start = true;
  p1.CharacterSelect = true;
  p2.CharacterSelect = true;
  }
} 

//randomly generates the moves
void randomMoves(){
   ellipseMode(CENTER);
  //rounds the random float into an int
  
  //move 1
  if (randomMove <=1){
    move1 = 1;
    fill (188, 111, 255);
    ellipse (100, 50, 50, 50);
  }else if (1 < randomMove && randomMove <= 2){
    move1 = 2;
    fill (255, 113, 191);
    ellipse (100, 50, 50, 50);
  }else if (2 < randomMove && randomMove <= 3){
    move1 = 3;
    fill (255, 185, 113);
    ellipse (100, 50, 50, 50);
  }else if (3 < randomMove && randomMove <= 4){
    move1 = 4;
    fill (219, 255, 113);
    ellipse (100, 50, 50, 50);
  }
  
  //move 2
  if (randomMove <=1){
    move2 = 1;
    fill (188, 111, 255);
    ellipse (166, 50, 50, 50);
  }else if (1 < randomMove && randomMove <= 2){
    move2 = 2;
    fill (255, 113, 191);
    ellipse (166, 50, 50, 50);
  }else if (2 < randomMove && randomMove <= 3){
    move2 = 3;
    fill (255, 185, 113);
    ellipse (166, 50, 50, 50);
  }else if (3 < randomMove && randomMove <= 4){
    move2 = 4;
    fill (219, 255, 113);
    ellipse (166, 50, 50, 50);
  }
  
  //move 3
  if (randomMove <=1){
    move3 = 1;
    fill (188, 111, 255);
    ellipse (233, 50, 50, 50);
  }else if (1 < randomMove && randomMove <= 2){
    move3 = 2;
    fill (255, 113, 191);
    ellipse (233, 50, 50, 50);
  }else if (2 < randomMove && randomMove <= 3){
    move3 = 3;
    fill (255, 185, 113);
    ellipse (233, 50, 50, 50);
  }else if (3 < randomMove && randomMove <= 4){
    move3 = 4;
    fill (219, 255, 113);
    ellipse (233, 50, 50, 50);
  }
  
  //move 4
  if (randomMove <=1){
    move4 = 1;
    fill (188, 111, 255);
    ellipse (300, 50, 50, 50);
  }else if (1 < randomMove && randomMove <= 2){
    move4 = 2;
    fill (255, 113, 191);
    ellipse (300, 50, 50, 50);
  }else if (2 < randomMove && randomMove <= 3){
    move4 = 3;
    fill (255, 185, 113);
    ellipse (300, 50, 50, 50);
  }else if (3 < randomMove && randomMove <= 4){
    move4 = 4;
    fill (219, 255, 113);
    ellipse (300, 50, 50, 50);
  }
  
  
}

void draw() {
  //when start = true then fade to black
  if (start == true) {
      if (fade <= 255){
        rectMode(CORNER);
        fade = fade + 0.5;
        fill (0, fade);
        rect (0, 0, width, height);
     } 
  }
  
     p1.characterSelect();
     p2.characterSelect();
     
     randomMoves();
  
}
