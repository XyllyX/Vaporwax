class UITextBox extends UIObject {
  
  PFont font;
  
  public UITextBox(){
    xPos = width/2;
    yPos = (height/3) * 2.4;
    eWidth = width;
    eHeight = height/3;
    color1 = color(255);
    color2 = color(0);
    
    noStroke();
  }
  
}