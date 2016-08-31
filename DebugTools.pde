class DebugTools{
  
  color textColor;
  color elementCol;
  boolean showMousePosition;
  boolean showInvisibleButtons;
  
  public DebugTools(boolean _showMousePosition, boolean _showInvisibleButtons){
    textColor = color(255, 0, 0);
    elementCol = color(255, 0, 0, 126);
    showMousePosition = _showMousePosition;
    showInvisibleButtons = _showInvisibleButtons;
  }
  
  private void drawMousePosition(){
    pushMatrix();
    pushStyle();
    fill(textColor);
    text( "Mouse X: " + mouseX + "\n" 
    + "Mouse Y: " + mouseY + "\n", 2, 12 );
    popStyle();
    popMatrix();
  }
  
  private void drawInvisBtnBounds(){
    pushMatrix();
    pushStyle();
    fill(elementCol);
    popStyle();
    popMatrix();
  }
  
  public void drawDebugInfo(){
    if(showMousePosition){
      drawMousePosition();
    }
    if(showInvisibleButtons){
      drawInvisBtnBounds();
    }
  }
  
}