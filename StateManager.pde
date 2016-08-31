class StateManager{
  
  private String currentState;
  private StartState startMenu;
  private GameState gamePlay;
  private PauseState pauseScreen;
  
  public StateManager(){
    currentState = "splash";
    
    startMenu = new StartState();
    gamePlay = new GameState();
    pauseScreen = new PauseState();
  }
  
  public void drawState(){
    background(255);
    if(currentState == "splash"){
      startMenu.drawStart();
    }
    
    if(currentState == "splash" && keyPressed == true){
      currentState = "game";
      gamePlay.drawGame();
    }
    
    if( (keyCode == ESC || key == 'p') && (currentState == "game") ){
      currentState = "paused";
    }
    
  }
  
}