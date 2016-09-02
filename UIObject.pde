class UIObject{
  
  protected float xPos;
  protected float yPos;
  protected float eWidth;
  protected float eHeight;
  protected color color1;
  protected color color2;
  
  public UIObject(){
    xPos = width/2;
    yPos = height/2;
    eWidth = 50;
    eHeight = 50;
    color1 = color(255);
    color2 = color(0);
  }
  
  public UIObject(float _xPos, float _yPos, float _eWidth, float _eHeight){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = color(255);
    color2 = color(0);
  }
  
  public UIObject(float _xPos, float _yPos, float _eWidth, float _eHeight, color _color1, color _color2){
    xPos = _xPos;
    yPos = _yPos;
    eWidth = _eWidth;
    eHeight = _eHeight;
    color1 = _color1;
    color2 = _color2;
  }
  
  protected void drawUIObject(){
    pushMatrix();
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(color2, 126);
    rect(xPos, yPos, eWidth, eHeight);
    popStyle();
    popMatrix();
  }
  
  protected void drawUIObject(float alpha){
    pushMatrix();
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(color2, alpha);
    rect(xPos, yPos, eWidth, eHeight);
    popStyle();
    popMatrix();
  }
  
}