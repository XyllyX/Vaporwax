class Character{
  
  private String name;
  private String mood;
  private boolean active;
  private ArrayList<PImage> neutrals;
  
  Character(String _name){
    name = _name;
    mood = "neutral";
    active = false;
    neutrals = new ArrayList<PImage>();
    for( int i = 0; i < 4; i++ ){
      neutrals.add( loadImage("assets/characters/" + name + "/neutral/"+nf(i, 1)+".png") );
    }
  }
  
  public void setMood(String _mood){
    mood = _mood;
  }
  
  public void setActive(boolean _active){
    active = _active;
  }
  
  public void drawCharacter(){
    
  }
  
}