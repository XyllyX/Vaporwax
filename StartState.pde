class StartState{
  
  private PImage splashScreen;
  
  public StartState(){
    splashScreen = loadImage("assets/scenes/menus/splash.png");
  }
  
  public void drawStart(){
    background(255);
    splashScreen.resize(width, height);
    image(splashScreen, 0, 0);
  }
  
}