public class Bubbles{
  
  //inicualize array variables for player 1
  public float[] bubbleX = new float[800];
  public float[] bubbleY = new float[800];
  public float[] bubbleSize = new float[800];
  public float[] bubbleSpeed = new float[800];
  public int bubbleCount = 0;
  public color bubbleColour = color(255, 145, 255 - p1.barSize.y/1.5, 200);
  
  //creates random bubbles for player 1
  void spawnBubbles(){
    if (bubbleCount < bubbleX.length){
      bubbleX[bubbleCount] = random(p1.bar.x - p1.barSize.x -120, p1.bar.x + p1.barSize.x -130);
      bubbleY[bubbleCount] = p1.bar.y;
      bubbleSize[bubbleCount] = random (15, 20);
      bubbleSpeed[bubbleCount] = random (1,3);
      bubbleCount++;
    }
}
     //updates the bubbles
    void updateBubbles(){
      for (int loop = 0; loop < bubbleCount; loop++){
        bubbleY[loop] -= bubbleSpeed[loop];
    }
}

    void drawBubbles(){
      for (int loop2 = 0; loop2 < bubbleCount; loop2++) {
      noStroke();
      fill(bubbleColour);  // Opaque white bubble
      ellipse(bubbleX[loop2], bubbleY[loop2], bubbleSize[loop2], bubbleSize[loop2]);
    }

}

// Initialize array variables for player 2
public float[] bubbleX2 = new float[200];
public float[] bubbleY2 = new float[200];
public float[] bubbleSize2 = new float[200];
public float[] bubbleSpeed2 = new float[200];
public int bubbleCount2 = 0;
public color bubbleColour2 = color(255, 0, p2.barSize.y/1.5, 200);

// Creates random bubbles for player 2
void spawnBubbles2() {
  if (bubbleCount2 < bubbleX2.length) {
    bubbleX2[bubbleCount2] = random(p2.bar.x - p2.barSize.x / 2 +140, p2.bar.x + p2.barSize.x / 2 +150 );
    bubbleY2[bubbleCount2] = p2.bar.y; 
    bubbleSize2[bubbleCount2] = random(15, 20);
    bubbleSpeed2[bubbleCount2] = random(1, 3);
    bubbleCount2++;  // Increase bubble count
    }
}

// Updates the bubbles for player 2
void updateBubbles2() {
  for (int i = 0; i < bubbleCount2; i++) {
    bubbleY2[i] -= bubbleSpeed2[i];  // Move the bubble upwards
    }
}

// Draws the bubbles for player 2
void drawBubbles2() {
  for (int i = 0; i < bubbleCount2; i++) {
    noStroke();
    fill(bubbleColour2);  // Opaque white bubble
    ellipse(bubbleX2[i], bubbleY2[i], bubbleSize2[i], bubbleSize2[i]);  // Draw the bubble
    }
}


}
