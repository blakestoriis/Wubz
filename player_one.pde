public class player1 {
  
  //inicialize variables
  public int moveOne = 0; //1 is correct, 2 is incorrect, 0 is blank
  public int moveTwo = 0;
  public int moveThree = 0;
  public int moveFour = 0;
  public int moveTracker = 1;
  
  public int points = 0;
  
  
  // when the pattern is given, player must click the correct W,A,S,D
  void move(){
    
// move 1
    if (moveCounter == 0){
      if (moveTracker == 1){
      
      // left arrow 'a'
        if (move1 == 1 && keyPressed && key == 'a'){
        moveOne = 1;
        points ++;
      }else if (move1 == 1 && keyPressed && key != 'a') {
        moveOne = 2;
      }
      
      // if right 'd'
      if (move1 == 2 && keyPressed && key == 'd'){
        moveTwo = 1;
        points ++;
      }else if (move1 == 2 && keyPressed && key != 'd'){
        moveTwo = 2;
      }
      
      // if up 'w'
      if (move1 == 3 && keyPressed && key == 'w'){
        moveThree = 1;
        points ++;
        moveTracker = 2;
      }else if (move1 == 3 && keyPressed && key != 'w'){
        moveThree = 2;
      }
      
      // if down 's'
      if (move1 == 4 && keyPressed && key == 's'){
        moveFour = 1;
        points ++;
      }else if (move1 == 4 && keyPressed && key != 's'){
        moveFour = 2;
      }
    }
    
    if (moveOne != 0 && !keyPressed){
        moveTracker = 2;
    }
    
//move 2    
    if (moveTracker == 2){
      
      // left arrow 'a'
        if (move2 == 1 && keyPressed && key == 'a'){
        moveOne = 1;
        points ++;
      }else if (move2 == 1 && keyPressed && key != 'a') {
        moveOne = 2;
      }
      
      // if right 'd'
      if (move2 == 2 && keyPressed && key == 'd'){
        moveTwo = 1;
        points ++;
      }else if (move2 == 2 && keyPressed && key != 'd'){
        moveTwo = 2;
      }
      
      // if up 'w'
      if (move2 == 3 && keyPressed && key == 'w'){
        moveThree = 1;
        points ++;
      }else if (move2 == 3 && keyPressed && key != 'w'){
        moveThree = 2;
      }
      
      // if down 's'
      if (move2 == 4 && keyPressed && key == 's'){
        moveFour = 1;
        points ++;
      }else if (move2 == 4 && keyPressed && key != 's'){
        moveFour = 2;
      }
    }
    
    if (moveTwo != 0 && !keyPressed){
        moveTracker = 3;
      }
        
//move 3    
    if (moveTracker == 3){
      
      // left arrow 'a'
        if (move3 == 1 && keyPressed && key == 'a'){
        moveOne = 1;
        points ++;
      }else if (move3 == 1 && keyPressed && key != 'a') {
        moveOne = 2;
      }
      
      // if right 'd'
      if (move3 == 2 && keyPressed && key == 'd'){
        moveTwo = 1;
        points ++;
      }else if (move3 == 2 && keyPressed && key != 'd'){
        moveTwo = 2;
      }
      
      // if up 'w'
      if (move3 == 3 && keyPressed && key == 'w'){
        moveThree = 1;
        points ++;
      }else if (move3 == 3 && keyPressed && key != 'w'){
        moveThree = 2;
      }
      
      // if down 's'
      if (move3 == 4 && keyPressed && key == 's'){
        moveFour = 1;
        points ++;
      }else if (move3 == 4 && keyPressed && key != 's'){
        moveFour = 2;
      }
    }
    
    if (moveThree != 0 && !keyPressed){
        moveTracker = 4;
    }
    
//move 4    
    if (moveTracker == 4){
      
      // left arrow 'a'
        if (move4 == 1 && keyPressed && key == 'a'){
        moveOne = 1;
        points ++;
      }else if (move4 == 1 && keyPressed && key != 'a') {
        moveOne = 2;
      }
      
      // if right 'd'
      if (move4 == 2 && keyPressed && key == 'd'){
        moveTwo = 1;
        points ++;
      }else if (move4 == 2 && keyPressed && key != 'd'){
        moveTwo = 2;
      }
      
      // if up 'w'
      if (move4 == 3 && keyPressed && key == 'w'){
        moveThree = 1;
        points ++;
      }else if (move4 == 3 && keyPressed && key != 'w'){
        moveThree = 2;
      }
      
      // if down 's'
      if (move4 == 4 && keyPressed && key == 's'){
        moveFour = 1;
        points ++;
      }else if (move4 == 4 && keyPressed && key != 's'){
        moveFour = 2;        
      } 
      
      if (moveThree != 0 && !keyPressed){
        moveTracker = 0;
      }
      
    }
    //draws incorrect or correct feedback 
    if (moveOne == 1){
      image (correct, -180, 180);
    }else if (moveOne == 2){
      image (incorrect, -180, 180);
    }else if (moveOne == 0){
      image (blank, -180, 180);
    }
    
    if (moveTwo == 1){
      image (correct, -140, 180);
    }else if (moveTwo == 2){
      image (incorrect, -140, 180);
    }else if (moveTwo == 0){
      image (blank, -140, 180);
    }
    
    if (moveThree == 1){
      image (correct, -100, 180);
    }else if (moveThree == 2){
      image (incorrect, -100, 180);
    }else if (moveThree == 0){
      image (blank, -100, 180);
    }
    
    if (moveFour == 1){
      image (correct, -60, 180);
    }else if (moveFour == 2){
      image (incorrect, -60, 180);
    }else if (moveFour == 0){
      image (blank, -60, 180);
    }
    
    }
  }
}
