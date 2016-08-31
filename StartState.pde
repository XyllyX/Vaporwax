class StartState{
  
  private PImage splashScreen;
  
  public StartState(){
    splashScreen = loadImage("assets/scenes/menus/splash.png");
  }
  
  public void drawStart(){
    background(255);
    splashScreen.resize(width, height);
    image(splashScreen, 0, 0);
    pushMatrix();
    pushStyle();
    tint(255, 126);
    image(splashScreen, random(-4, 4), random(-4, 4));
    popStyle();
    popMatrix();
  }
  
}