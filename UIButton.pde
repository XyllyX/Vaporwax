class UIButton extends UIObject{
  
  private boolean btnTrigger;
  
  public UIButton() {
    eWidth = 100;
    eHeight = 100;
    btnTrigger = false;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = color(255);
    color2 = color(0);
    btnTrigger = false;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
    btnTrigger = false;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, boolean isInvisible){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    btnTrigger = false;
    if(isInvisible){
      color1 = color(0, 0, 0, 0);
      color2 = color(0, 0, 0, 0);
    }
  }
  
}