class GameState{
  
  Character ann;
  
  //hardcoding test scene for now, will otherwise use script based system
  //may use gamestates as chapters
  public GameState(){
    ann = new Character("Ann", 2);
  }
  
  public void drawGame(){
    background(255);
    
  }
  
}