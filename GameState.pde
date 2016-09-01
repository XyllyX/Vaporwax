class GameState{
  
  Character tru;
  
  //hardcoding test scene for now, will otherwise use script based system
  //may use gamestates as chapters
  public GameState(){
    tru = new Character("tru", 2);
  }
  
  public void drawGame(){
    background(255);
    
  }
  
}