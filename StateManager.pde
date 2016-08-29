class StateManager{
  
  private String currentState;
  
  StateManager(String _currentState){
    currentState = _currentState;
  }
  
  public String getState(){
    return currentState;
  }
  
  public void setState(String _state){
    currentState = _state;
  }
  
}