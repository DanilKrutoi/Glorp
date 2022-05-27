int x = 0;
int y = 0;
color fillVal = color(126);
Controller keyboardInput;

void keyPressed() {
  keyboardInput.press(keyCode);
}

void keyReleased() {
  keyboardInput.release(keyCode);
}

void setup() {  
  size(1600, 1600);
  background(#248749);
  keyboardInput = new Controller();
}

//Visualize which keys are being held down...
void draw() {
  background(#248749);

  //check if the button P1_LEFT is being pressed:
  if (keyboardInput.isPressed(Controller.P1_LEFT)) {
    x -= 10;
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P1_RIGHT)) {
    x+=10;
  }
  fill(fillVal);
  rect(x, y, 50, 50);
}


/**************CONTROLLER TAB************/
class Controller {
  static final int P1_LEFT = 0;
  static final int P1_RIGHT = 1;
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[2];//2 valid buttons
  }

  /**@param code: a valid constant e.g. P1_LEFT
   */
  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
    println(code);
    if (code == 'A')
      inputs[P1_LEFT] = true;
    if (code == 'D')
      inputs[P1_RIGHT] = true;
  }
  void release(int code) {
    if (code == 'A')
      inputs[P1_LEFT] = false;
    if (code == 'D')
      inputs[P1_RIGHT] = false;
  }
}
