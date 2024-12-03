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
    
  }
}


// pressing space increases player 1s bar
void keyPressed() {
  if (key == ' ') {
    p1.spacePressed = true; 
    }
}
//clicking with the mouse increases player 2s bar
void mousePressed() {
  p2.click = true;
}
