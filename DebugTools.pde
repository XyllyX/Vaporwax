class DebugTools{
  
  boolean showMousePosition;
  
  DebugTools(boolean _showMousePosition){
    showMousePosition = _showMousePosition;
  }
  
  private void drawMousePosition(){
    pushMatrix();
    pushStyle();
    fill(0);
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