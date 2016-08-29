private StateManager state;

void setup() {
  size(800,600);
  frameRate(60);
  state = new StateManager();
}

void draw() {
  state.drawState();
}