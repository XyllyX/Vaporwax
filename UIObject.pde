class UIObject{
  
  protected float xPos;
  protected float yPos;
  protected float eWidth;
  protected float eHeight;
  
  public UIObject(){
    xPos = width/2;
    yPos = height/2;
    eWidth = 50;
    eHeight = 50;
  }
  
  public UIObject(float _xPos, float _yPos, float _eWidth, float _eHeight){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
  }
  
}