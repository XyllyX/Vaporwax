class Character{
  
  private String name;
  private String mood;
  
  Character(String _name){
    name = _name;
    mood = "neutral";
  }
  
  public String getMood(){
    return mood;
  }
  
  public void setMood(String _mood){
    mood = _mood;
  }
  
  public void drawCharacter(){
    
  }
  
}