public class player2 {
  
  public boolean CharacterSelect = false;
  public int character = 0;
  
  void characterSelect(){
    rectMode(CENTER);
    if (CharacterSelect == true){
    fill (255, 93, 93, fade*2);
    rect (100, 200, 50, 50); //character 1
    fill (255, 168, 26, fade*2);
    rect (166, 200, 50, 50); // character 2
    fill (155, 255, 26, fade*2);
    rect (233, 200, 50, 50); // character 3
    fill (9, 31, 170, fade*2);
    rect (300, 200, 50, 50); // character 4
    }
   
    //select character 1
    if (CharacterSelect == true){
      if (mousePressed && 75 <= mouseX && mouseX <= 125 && 175 <= mouseY && mouseY <= 225){
        character = 1;
        CharacterSelect = false;
        fill (255);
        rect (100, 200, 50, 50); //character 1
      }
      //select character 2
      if (mousePressed && 141 <= mouseX && mouseX <= 191 && 175 <= mouseY && mouseY <= 225){
        character = 2;
        CharacterSelect = false;
        fill (255);
        rect (166, 200, 50, 50); // character 2
      }
      //select character 3
      if (mousePressed && 208 <= mouseX && mouseX <= 258 && 175 <= mouseY && mouseY <= 225){
        character = 3;
        CharacterSelect = false;
        fill (255);
        rect (233, 200, 50, 50); // character 3
      }
      //select character 4
      if (mousePressed && 275 <= mouseX && mouseX <= 325 && 175 <= mouseY && mouseY <= 225){
        character = 4;
        CharacterSelect = false;
        fill (255);
        rect (300, 200, 50, 50); // character 4
      }
    }
  }
}
