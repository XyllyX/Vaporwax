class MainMenuState{
  
  //consider putting buttons into an array
  //although variable names allow readability
  UIButton playButton;
  UIButton loadSaveButton;
  UIButton deleteSaveButton;
  UIButton optionsButton;
  UIButton quitButton;
  
  public MainMenuState(){
    playButton = new UIButton( 900, (height * 0.2) - (height/5)/2, 200, (height * 0.2)*0.8 );
    loadSaveButton = new UIButton( 900, (height * 0.4) - (height/5)/2, 200, (height * 0.2)*0.8 );
    deleteSaveButton = new UIButton( 900, (height * 0.6) - (height/5)/2, 200, (height * 0.2)*0.8 );
    optionsButton = new UIButton( 900, (height * 0.8) - (height/5)/2, 200, (height * 0.2)*0.8 );
    quitButton = new UIButton( 900, (height) - (height/5)/2, 200, (height * 0.2)*0.8 );
  }
  
  public void drawMainMenu(){
    playButton.drawUIObject();
    loadSaveButton.drawUIObject();
    deleteSaveButton.drawUIObject();
    optionsButton.drawUIObject();
    quitButton.drawUIObject();
  }
  
  public int menuButtonManager(){
    return 0;
  }
  
}