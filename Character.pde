class Character{
  
  private String name;
  private String mood;
  private boolean active;
  private boolean faceLeft;
  private boolean introduced;
  private boolean talking;
  private float xPos;
  private float yPos;
  private int imgVariants;
  
  private ArrayList<PImage> neutrals;
  private ArrayList<PImage> happies;
  private ArrayList<PImage> saddies;
  private ArrayList<PImage> angries;
  
  public Character(String _name, int _imgVariants){
    name = _name;
    mood = "neutral";
    active = false;
    faceLeft = false;
    introduced = false;
    xPos = -250;
    yPos = (height/2) + height*0.1;
    imgVariants = _imgVariants;
    
    neutrals = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      neutrals.add( loadImage("assets/characters/" + name + "/neutral/"+nf(i, 1)+".png") );
      neutrals.get(i).resize(0, int(height * 0.8) );
    }
    happies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      happies.add( loadImage("assets/characters/" + name + "/happy/"+nf(i, 1)+".png") );
      happies.get(i).resize(0, int(height * 0.8) );
    }
    saddies = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      saddies.add( loadImage("assets/characters/" + name + "/sad/"+nf(i, 1)+".png") );
      saddies.get(i).resize(0, int(height * 0.8) );
    }
    angries = new ArrayList<PImage>();
    for( int i = 0; i < imgVariants; i++ ){
      angries.add( loadImage("assets/characters/" + name + "/angry/"+nf(i, 1)+".png") );
      angries.get(i).resize(0, int(height * 0.8) );
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
  
  public void setCharPos(float _xPos, float _yPos){
    xPos = _xPos;
    yPos = _yPos;
  }
  
  public void setFacing(boolean _faceLeft){
    faceLeft = _faceLeft;
  }
  
  public void moveIn(boolean fromRight, float moveSpeed){
    if(fromRight){
      faceLeft = true;
      if( xPos > width*0.8 ){
        
      }
    } else {
      faceLeft = false;
      if( xPos < width*0.2 ){
        xPos += moveSpeed;
      }
    }
  }
  
  public boolean getIntroduced(){
    return introduced;
  }
  
  public void setIntroduced(boolean isIntroduced){
    introduced = isIntroduced;
  }
  
  public void setTalking(boolean _talking){
    talking = _talking;
  }
  
  public void drawCharacter(){
    pushMatrix();
    pushStyle();
    imageMode(CENTER);
    if(mood == "happy"){
      if(talking){
        image(happies.get(1), xPos, yPos, happies.get(1).width, neutrals.get(1).height);
      } else {
      image(happies.get(0), xPos, yPos, happies.get(0).width, neutrals.get(0).height);
      }
    } 
    
    else if (mood == "sad"){
      if(talking){
        image(saddies.get(1), xPos, yPos, saddies.get(1).width, neutrals.get(1).height);
      } else {
      image(saddies.get(0), xPos, yPos, saddies.get(0).width, neutrals.get(0).height);
      }
    } 
    
    else if (mood == "angry"){
      if(talking){
        image(angries.get(1), xPos, yPos, angries.get(1).width, neutrals.get(1).height);
      } else {
      image(angries.get(0), xPos, yPos, angries.get(0).width, neutrals.get(0).height);
      }
    } 
    
    else {
      if(talking){
        image(neutrals.get(1), xPos, yPos, neutrals.get(1).width, neutrals.get(1).height);
      } else {
      image(neutrals.get(0), xPos, yPos, neutrals.get(0).width, neutrals.get(0).height);
      }
    }
    popStyle();
    popMatrix();
  }
  
}