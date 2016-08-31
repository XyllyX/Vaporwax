class UIButton extends UIObject{
  
  private String btnTarget;
  
  public UIButton(String _btnTarget) {
    eWidth = 100;
    eHeight = 100;
    btnTarget = _btnTarget;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, String _btnTarget){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = color(255);
    color2 = color(0);
    btnTarget = _btnTarget;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2, String _btnTarget){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
    btnTarget = _btnTarget;
  }
  
  public UIButton(float _xPos, float _yPos, float _eWidth, float _eHeight, boolean isInvisible, String _btnTarget){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    btnTarget = _btnTarget;
    if(isInvisible){
      color1 = color(0, 0, 0, 0);
      color2 = color(0, 0, 0, 0);
    }
  }
  
}