private StateManager state;
private DebugTools debug;

void setup() {
  size(1200,800);
  frameRate(60);
  state = new StateManager();
  debug = new DebugTools(false, false);
}

void mousePressed(){
  state.updateState();
}

void draw() {
  state.drawState();
  debug.drawDebugInfo();
}