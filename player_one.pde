class player2 {
  public PVector bar;   
  public PVector barSize; 
  public float maxHeight;  
  public float decreaseRate;  
  public float increaseRate;  
  public boolean click = false; 
  //public float score = bar.y;

  player2() {
    bar = new PVector(width / 2 - 10, height - 10);
    maxHeight = height - 20;
    barSize = new PVector(20, maxHeight);
    decreaseRate = 1;  // Shrink rate
    increaseRate = 10;  // Growth rate 
    }

  void barGame() {
    
    // Adjust bar size based on space bar input
    if (click) {
      barSize.y = constrain(barSize.y + increaseRate, 2, maxHeight);  // Increase height
      b.spawnBubbles2();
      click = false; 
      }else {
      barSize.y = constrain(barSize.y - decreaseRate, 2, maxHeight);  // Decrease height
      }

    // Draw the vertical bar
    stroke(133, 11, 255 - p2.barSize.y/2);
    fill(255, 116, 255 - p2.barSize.y);
    rect(bar.x + 120, bar.y - barSize.y, 50, barSize.y); 
    }
  
}
