class particleClass extends GameObject {

  particleClass(float x, float y, float vx, float vy, float size) {
    super(x, y, vx, vy, size, #FEE440, 1);
  }



  void act() {

    super.act();

    size = size - explosionSize;

    if (size <= 0) {
      lives = 0;
    }
  }
}
