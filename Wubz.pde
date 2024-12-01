PImage leftArrow;
PImage rightArrow;
PImage upArrow;
PImage downArrow;

//declare classes
player1 p1;
player2 p2;

void setup() {
  size (400,400);
  background (255);
  noStroke();
  
  println ("Press SPACE to start");
  
  //setup images
  leftArrow = loadImage ("leftArrow.png");
  rightArrow = loadImage ("rightArrow.png");
  upArrow = loadImage ("upArrow.png");
  downArrow = loadImage ("downArrow.png");

  
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
  int moveCounter = 1;
  

void keyPressed(){
  //if SPACE is pressed, then start = true
  if (key == ' '){
  start = true;
  }
} 


void draw() {
  //when start = true then fade to black
  if (start == true) {
      if (fade <= 50){
        rectMode(CORNER);
        fade = fade + 0.5;
        fill (0, fade);
        rect (0, 0, width, height);
     } 
  }
     
     randomMoves();
  
}

//randomly generates the moves
void randomMoves(){
   ellipseMode(CENTER);
  //rounds the random float into an int
  
if (start == true && fade >= 50){
  if (frameCount%240 == 1){
    randomMove = random(0,4);
  
  //move1
  if (moveCounter == 1){
    if (randomMove <=1){
      move1 = 1;
      image (leftArrow, -100, -150);
      moveCounter = 2;
    }else if (1 < randomMove && randomMove <= 2){
      move1 = 2;
      image (rightArrow, -100, -150);
      moveCounter = 2;
    }else if (2 < randomMove && randomMove <= 3){
      move1 = 3;
      image (upArrow, -100, -150);
      moveCounter = 2;
    }else if (3 < randomMove && randomMove <= 4){
      move1 = 4;
      image (downArrow, -100, -150);
      moveCounter = 2;
    }  
  }
  }
  
  if (frameCount%240 == 60){
    randomMove = random(0,4);
  
  //move2
  if (moveCounter == 2){
    if (randomMove <=1){
      move2 = 1;
      image (leftArrow, -33, -150);
      moveCounter = 3;
    }else if (1 < randomMove && randomMove <= 2){
      move2 = 2;
      image (rightArrow, -33, -150);
      moveCounter = 3;
    }else if (2 < randomMove && randomMove <= 3){
      move2 = 3;
      image (upArrow, -33, -150);
      moveCounter = 3;
    }else if (3 < randomMove && randomMove <= 4){
      move2 = 4;
      image (downArrow, -33, -150);
      moveCounter = 3;
    }  
  }
  }
  
  if (frameCount%240 == 120){
    randomMove = random(0,4);
  
  //move3
  if (moveCounter == 3){
    if (randomMove <=1){
      move3 = 1;
      image (leftArrow, 33, -150);
      moveCounter = 4;
    }else if (1 < randomMove && randomMove <= 2){
      move3 = 2;
      image (rightArrow, 33, -150);
      moveCounter = 4;
    }else if (2 < randomMove && randomMove <= 3){
      move3 = 3;
      image (upArrow, 33, -150);
      moveCounter = 4;
    }else if (3 < randomMove && randomMove <= 4){
      move3 = 4;
      image (downArrow, 33, -150);
      moveCounter = 4;
    }  
  }
  } 
  
  if (frameCount%240 == 180){
    randomMove = random(0,4);
  
  //move4
  if (moveCounter == 4){
    if (randomMove <=1){
      move4 = 1;
      image (leftArrow, 100, -150);
      moveCounter = 1;
    }else if (1 < randomMove && randomMove <= 2){
      move4 = 2;
      image (rightArrow, 100, -150);
      moveCounter = 1;
    }else if (2 < randomMove && randomMove <= 3){
      move4 = 3;
      image (upArrow, 100, -150);
      moveCounter = 1;
    }else if (3 < randomMove && randomMove <= 4){
      move4 = 4;
      image (downArrow, 100, -150);
      moveCounter = 1;
    }  
  }
  }
}
  
}
