private StateManager state;

void setup() {
  size(1200,800);
  frameRate(60);
  state = new StateManager();
}

void draw() {
  state.drawState();
}