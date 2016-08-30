private StateManager state;
private DebugTools debug;

void setup() {
  size(1200,800);
  frameRate(60);
  state = new StateManager();
  debug = new DebugTools(true);
}

void draw() {
  state.drawState();
  debug.drawDebugInfo();
}