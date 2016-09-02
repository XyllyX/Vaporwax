class UITextBox extends UIObject {
  
  PFont font;
  float scrollSpeed;
  
  public UITextBox(){
    xPos = width/2;
    yPos = (height/3) * 2.4;
    eWidth = width;
    eHeight = height/3;
    color1 = color(255);
    color2 = color(0);
  }
  
  public UITextBox(String _font, float fontSize){
    xPos = width/2;
    yPos = (height/3) * 2.4;
    eWidth = width;
    eHeight = height/3;
    color1 = color(255);
    color2 = color(0);
    font = createFont("assets/fonts/" + _font + ".ttf", fontSize, true);
  }
  
  public UITextBox(String _font, float fontSize, float _scrollSpeed){
    xPos = width/2;
    yPos = (height/3) * 2.4;
    eWidth = width;
    eHeight = height/3;
    color1 = color(255);
    color2 = color(0);
    font = createFont("assets/fonts/" + _font + ".ttf", fontSize, true);
    scrollSpeed = _scrollSpeed;
  }
  
  public void drawText(String _text){
    pushMatrix();
    pushStyle();
    fill(color1);
    textFont(font);
    text(_text, ( xPos - ( eWidth / 2 ) ) + ( width * 0.2 ), yPos - ( eHeight * 0.3 ));
    popStyle();
    popMatrix();
  }
  
}