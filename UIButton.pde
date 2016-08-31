class UIButton extends UIObject{
  
  boolean isInvisible;
  
  public UIButton() {
    eWidth = 100;
    eHeight = 100;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = color(255);
    color2 = color(0);
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2, boolean _isInvisible){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
    isInvisible = _isInvisible;
  }
  
  public void drawUIButton(){
    if(!isInvisible){
      pushMatrix();
      pushStyle();
      rectMode(CENTER);
      fill(color2, 126);
      rect(xPos, yPos, eWidth, eHeight);
      popStyle();
      popMatrix();
    }
  }
  
}