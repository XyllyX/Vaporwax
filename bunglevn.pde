/*TODO:
*
* implement character class in gamestate
* basic gameplay working
* read from script-style input text file
* iterate the script line by line for an easy way to create stories
* main menu (new state after splash screen)
* 
*/

private StateManager state;
private DebugTools debug;

void setup() {
  size(1200,800);
  frameRate(60);
  state = new StateManager();
  debug = new DebugTools(true, false);
}

void draw() {
  state.drawState();
  debug.drawDebugInfo();
}