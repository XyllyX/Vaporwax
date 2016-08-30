class Character{
  
  private String name;
  private String mood;
  private boolean active;
  private boolean faceLeft;
  private int xPos;
  private int yPos;
  private int imgVariants;
  
  private ArrayList<PImage> neutrals;
  private ArrayList<PImage> happies;
  private ArrayList<PImage> saddies;
  private ArrayList<PImage> angries;
  
  Character(String _name, int _imgVariants){
    name = _name;
    mood = "neutral";
    active = false;
    faceLeft = false;
    xPos = -400;
    yPos = height/2;
    imgVariants = _imgVariants;
    
    neutrals = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      neutrals.add( loadImage("assets/characters/" + name + "/neutral/"+nf(i, 1)+".png") );
    }
    happies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      happies.add( loadImage("assets/characters/" + name + "/happy/"+nf(i, 1)+".png") );
    }
    saddies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      saddies.add( loadImage("assets/characters/" + name + "/sad/"+nf(i, 1)+".png") );
    }
    angries = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
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
  
  public void setCharPos(int _xPos, int _yPos){
    xPos = _xPos;
    yPos = _yPos;
  }
  
  public void setFacing(boolean _faceLeft){
    faceLeft = _faceLeft;
  }
  
  public void moveIn(boolean fromRight){
    if(fromRight){
      faceLeft = true;
      if( xPos > width*0.75 ){
        
      }
    } else {
      faceLeft = false;
      if( xPos < width*0.25 ){
        
      }
    }
  }
  
  public void drawCharacter(){
    pushMatrix();
    imageMode(CENTER);
    if(mood == "happy"){
      
    } else if (mood == "sad"){
      
    } else if (mood == "angry"){
      
    } else {
      
    }
    popMatrix();
  }
  
}