class StartState{
  
  private PImage splashScreen;
  private PImage splashLogo;
  
  public StartState(){
    splashScreen = loadImage("assets/scenes/menus/splash.png");
    splashLogo = loadImage("assets/scenes/menus/splashlogo.png");
  }
  
  public void drawStart(){
    background(255);
    splashScreen.resize(width, height);
    splashLogo.resize(width, height);
    image(splashScreen, 0, 0);
    pushMatrix();
    pushStyle();
    tint(255, 126);
    image(splashLogo, random(-5, 5), random(-5, 5));
    popStyle();
    popMatrix();
  }
  
}