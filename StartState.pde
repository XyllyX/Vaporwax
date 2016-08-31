class StartState{
  
  private PImage splashScreen;
  private PImage splashLogo;
  private PImage splashBg;
  
  private UIButton key1;
  private UIButton key2;
  private UIButton key3;
  private UIButton casette;
  
  public StartState(){
    splashScreen = loadImage("assets/scenes/menus/start/splash.png");
    splashLogo = loadImage("assets/scenes/menus/start/splashlogo.png");
    splashBg = loadImage("assets/scenes/menus/start/splashbg.png");
    
    key1 = new UIButton(140, 230, 120, 140, true);
    key2 = new UIButton(175, 460, 140, 135, true);
    key3 = new UIButton(1035, 410, 120, 180, true);
    casette = new UIButton(1010, 175, 240, 220, true);
  }
  
  public void drawStart(){
    background(255);
    splashScreen.resize(width, height);
    splashLogo.resize(width, height);
    splashBg.resize(width,height);
    image(splashScreen, 0, 0);
    
    pushMatrix();
    pushStyle();
    tint(255, 126);
    image(splashLogo, random(-5, 5), random(-5, 5));
    popStyle();
    popMatrix();
  }
  
  //USE BUTTONCLICKED AGAIN ONCE FIXED
  public int startStateBtnManager(){
    if( key1.buttonClicked() ){
      return 1;
    }
    if( key2.buttonClicked() ){
      return 2;
    }
    if( key3.buttonClicked() ){
      return 3;
    }
    if( casette.buttonClicked() ){
      return 4;
    }
    return 0;
  }
  
}