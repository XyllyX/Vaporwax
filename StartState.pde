class StartState{
  
  private PImage splashScreen;
  
  StartState(){
    splashScreen = loadImage("assets/scenes/menus/splash.png");
  }
  
  public void drawStart(){
    background(255);
    splashScreen.resize(width, height);
    image(splashScreen, 0, 0);
  }
  
}