class StateManager{
  
  private String currentState;
  
  StateManager(){
    currentState = "splash";
  }
  
  protected String getState(){
    return currentState;
  }
  
  protected void setState(String _state){
    currentState = _state;
  }
  
  public void drawState(){
    background(255);
    
    if( (keyCode == ESC || key == 'p') && (currentState == "game") ){
      currentState = "paused";
    }
    
  }
  
}