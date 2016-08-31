class UIButton extends UIObject{
  
  private boolean btnTrigger;
  private float leftBound;
  private float rightBound;
  private float topBound;
  private float bottomBound;
  
  public UIButton() {
    eWidth = 100;
    eHeight = 100;
    btnTrigger = false;
    leftBound = xPos - eWidth/2;
    rightBound = xPos + eWidth/2;
    topBound = yPos - eHeight/2;
    bottomBound = yPos + eHeight/2;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = color(255);
    color2 = color(0);
    btnTrigger = false;
    leftBound = xPos - eWidth/2;
    rightBound = xPos + eWidth/2;
    topBound = yPos - eHeight/2;
    bottomBound = yPos + eHeight/2;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
    btnTrigger = false;
    leftBound = xPos - eWidth/2;
    rightBound = xPos + eWidth/2;
    topBound = yPos - eHeight/2;
    bottomBound = yPos + eHeight/2;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, boolean isInvisible){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    btnTrigger = false;
    leftBound = xPos - eWidth/2;
    rightBound = xPos + eWidth/2;
    topBound = yPos - eHeight/2;
    bottomBound = yPos + eHeight/2;
    if(isInvisible){
      color1 = color(0, 0, 0, 0);
      color2 = color(0, 0, 0, 0);
    }
  }
  
  /*
  public boolean getButtonTrigger(){
    return btnTrigger;
  }
  
  public void setButtonTrigger(boolean isTriggered){
    btnTrigger = isTriggered;
  }*/
  
  public boolean mouseOver(){
    if( mouseX > leftBound && mouseX < rightBound && mouseY > topBound && mouseY < bottomBound ){
      return true;
    }
    return false;
  }
  
  public boolean buttonClicked(){
    if( this.mouseOver() && mousePressed ){
      return true;
    }
    return false;
  }
  
}