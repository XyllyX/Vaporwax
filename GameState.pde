class GameState{
  
  private PImage backgroundImage;
  private Characters ann;
  private UITextBox textBox;
  
  //hardcoding test scene for now, will otherwise use script based system
  //may use gamestates as chapters
  public GameState(){
    backgroundImage = loadImage("assets/scenes/locations/station.png");
    backgroundImage.resize(width, height);
    ann = new Characters("Ann", 2);
    textBox = new UITextBox("Cicle_Gordita", 28);
  }
  
  public void drawGame(){
    
    pushMatrix();
    pushStyle();
    
    background(255);
    
    imageMode(CENTER);
    image(backgroundImage, width/2, height/2);
    
    ann.moveIn(false, 4);
    ann.drawCharacter();
    if(key == ' '){
      ann.setTalking(true);
    }
    if(key == 't'){
      ann.setTalking(false);
    }
    
    //testing mood changing
    if(key == 'h'){
      ann.setMood("happy");
    }
    if(key == 's'){
      ann.setMood("sad");
    }
    if(key == 'a'){
      ann.setMood("angry");
    }
    if(key == 'n'){
      ann.setMood("neutral");
    }
    
    textBox.drawUIObject( (255 * 0.7) );
    textBox.drawText("Just kidding!");
    
    popMatrix();
    popStyle();
    
  }
  
}