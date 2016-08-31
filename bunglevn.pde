private StateManager state;
private DebugTools debug;

void setup() {
  size(1200,800);
  frameRate(60);
  state = new StateManager();
  debug = new DebugTools(true, true);
}

void draw() {
  state.updateState();
  state.drawState();
  debug.drawDebugInfo();
}