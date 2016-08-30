class DebugTools{
  
  color textColor;
  boolean showMousePosition;
  
  DebugTools(boolean _showMousePosition){
    textColor = color(255, 0, 0);
    showMousePosition = _showMousePosition;
  }
  
  private void drawMousePosition(){
    pushMatrix();
    pushStyle();
    fill(textColor);
    text( "Mouse X: " + mouseX + "\n" 
    + "Mouse Y: " + mouseY + "\n", 0, 20 );
    popStyle();
    popMatrix();
  }
  
  public void drawDebugInfo(){
    if(showMousePosition){
      drawMousePosition();
    }
  }
  
}