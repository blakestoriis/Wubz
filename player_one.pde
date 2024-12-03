class player1 {
  public PVector bar;   
  public PVector barSize; 
  public float maxHeight;  
  public float decreaseRate;  
  public float increaseRate;  
  public boolean spacePressed = false;
  //public float score = bar.y;

  player1() {
    bar = new PVector(width / 2 - 10, height - 10);
    maxHeight = height - 20;
    barSize = new PVector(20, maxHeight);
    decreaseRate = 1;  // Shrink rate
    increaseRate = 10;  // Growth rate 
    }

  void barGame() {
    
    // Adjust bar size based on space bar input
    if (spacePressed) {
      barSize.y = constrain(barSize.y + increaseRate, 2, maxHeight);  // Increase height
      b.spawnBubbles();
      spacePressed = false; 
      }else {
      barSize.y = constrain(barSize.y - decreaseRate, 2, maxHeight);  // Decrease height
      }

    // Draw the vertical bar
    stroke(100, 0, barSize.y);
    strokeWeight (10);
    fill(255, 0, barSize.y);
    rect(bar.x - 150, bar.y - barSize.y, 50, barSize.y); 
    }
  
}
