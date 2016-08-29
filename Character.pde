class Character{
  
  private String name;
  private String mood;
  private boolean active;
  private ArrayList<PImage> neutrals;
  private ArrayList<PImage> happies;
  private ArrayList<PImage> saddies;
  private ArrayList<PImage> angries;
  
  Character(String _name){
    name = _name;
    mood = "neutral";
    active = false;
    neutrals = new ArrayList<PImage>();
    for( int i = 0; i < 4; i++ ){
      neutrals.add( loadImage("assets/characters/" + name + "/neutral/"+nf(i, 1)+".png") );
    }
    happies = new ArrayList<PImage>();
    for( int i = 0; i < 4; i++ ){
      happies.add( loadImage("assets/characters/" + name + "/happy/"+nf(i, 1)+".png") );
    }
    saddies = new ArrayList<PImage>();
    for( int i = 0; i < 4; i++ ){
      saddies.add( loadImage("assets/characters/" + name + "/sad/"+nf(i, 1)+".png") );
    }
    angries = new ArrayList<PImage>();
    for( int i = 0; i < 4; i++ ){
      angries.add( loadImage("assets/characters/" + name + "/angry/"+nf(i, 1)+".png") );
    }
  }
  
  public String getCharacterName(){
    return name;
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