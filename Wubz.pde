// Initialize images
PImage Wubz;
PImage start;

// Declare classes
player1 p1;
player2 p2;
Bubbles b;

// Initialize variables
boolean startscreen = true;
boolean gamescreen = false;
int timer = 30;
boolean player1wins = false;
boolean player2wins = false;
boolean lose = false;

void setup() {
  size(400, 400);

  // Setup images
  Wubz = loadImage("wubz.png");
  start = loadImage("start.png");

  // Initialize classes
  p1 = new player1();
  p2 = new player2();
  b = new Bubbles();
}

void draw() {
  background(200);

  startScreen(); 
  gameScreen();  
  timer();
  playerWins();
    
  //updates bubbles display
  b.updateBubbles();
  b.drawBubbles();
  b.updateBubbles2();
  b.drawBubbles2();
    
  }


// Draw start screen and handle button press
void startScreen() {
  if (startscreen) {
    image(Wubz, 0, 0); //title image
    image(start, 0, 0); //start button

    // Check if the start button is clicked
    if (135 <= mouseX && mouseX <= 260 && 233 <= mouseY && mouseY <= 269 && mousePressed) {
      startscreen = false;
      gamescreen = true;
     }
    }
}

// Draw game screen
void gameScreen() {
  if (gamescreen) {
    p1.barGame(); // calls player 1s bar
    p2.barGame(); // calls player 2s bar
    }
}

//defines the 30 second timer
void timer(){
  if (gamescreen == true){
    if (frameCount%60 == 1){ //every 60 frames the timer goes 1 second
      timer --;
    }
      fill(0);
      textSize(32);
      textAlign (CENTER, CENTER);
      text(timer, width/2, height/2);
    
  }
  //if the timer runs out then the winner with the highest score wins, if both players are under 75 then both players lose
  if (timer <= 0){
    gamescreen = false;
        if (p1.barSize.y > p2.barSize.y && p1.barSize.y > 75 && p2.barSize.y > 75) {
        player1wins = true;
      } else if (p2.barSize.y > p1.barSize.y && p1.barSize.y > 75 && p2.barSize.y > 75) {
        player2wins = true;
      }
  }
}

//displays the win screen, and if x is clicked then the game resets
void playerWins(){
  if (player1wins == true){
    println (" player 1 wins");
    
  } else if (player2wins == true){
    println (" player 2 wins");
    
    }
  }



// pressing space increases player 1s bar
void keyPressed() {
  if (key == ' ') {
    p1.spacePressed = true; 
    }
    
  if (player1wins == true){
    if (key == 'x'){
      player1wins = false;
      timer = 30;
      gamescreen = true;
      p1.barSize.y = p1.maxHeight;
      p2.barSize.y = p2.maxHeight;
  }
}
if (player2wins == true){
    if (key == 'x'){
      player2wins = false;
      timer = 30;
      gamescreen = true;
      p1.barSize.y = p1.maxHeight;
      p2.barSize.y = p2.maxHeight;
  }
}
}

//clicking with the mouse increases player 2s bar
void mousePressed() {
  p2.click = true;
}
