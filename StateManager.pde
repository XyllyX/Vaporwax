class StateManager{
  
  private String currentState;
  private StartState startMenu;
  private MainMenuState mainMenu;
  private GameState gamePlay;
  private PauseState pauseScreen;
  private GameOverState gameOver;
  
  public StateManager(){
    currentState = "splash";
    
    startMenu = new StartState();
    mainMenu = new MainMenuState();
    gamePlay = new GameState();
    pauseScreen = new PauseState();
    gameOver = new GameOverState();
  }
  
  public void updateState() {
    if(currentState == "splash"){
      if( startMenu.startStateBtnManager() == 1 ){
        currentState = "menu";
      } else if ( startMenu.startStateBtnManager() == 4 ){
        currentState = "over";
      }
    }
    
    if(currentState == "menu") {
      if( mainMenu.menuButtonManager() == 1 ){
        
      }
    }
    
    if(currentState == "game")  {
    }
    
    if(currentState == "pause") {
    }
    
    if(currentState == "over") {
    }
  }
  
  public void drawState(){
    background(255);
    
    if(currentState == "splash"){
      startMenu.drawStart();
    }
    
    if(currentState == "menu") {
      mainMenu.drawMainMenu();
    }
    
    if(currentState == "game")  {
      gamePlay.drawGame();
    }
    
    if(currentState == "pause") {
      pauseScreen.drawPause();
    }
    
    if(currentState == "over") {
      gameOver.drawGameOver();
    }
    
  }
  
}