class GameState{
  
  Character ann;
  
  //hardcoding test scene for now, will otherwise use script based system
  //may use gamestates as chapters
  public GameState(){
    ann = new Character("Ann", 2);
  }
  
  public void drawGame(){
    background(255);
    ann.moveIn(false, 4);
    ann.drawCharacter();
    if(key == ' '){
      ann.setTalking(true);
    }
    if(key == 't'){
      ann.setTalking(false);
    }
    
    //testing mood changing
    if(key == 'h'){
      ann.setMood("happy");
    }
    if(key == 's'){
      ann.setMood("sad");
    }
    if(key == 'a'){
      ann.setMood("angry");
    }
    if(key == 'n'){
      ann.setMood("neutral");
    }
  }
  
}