class powerUp extends GameObject {
  
  powerUp(float x, float y){
    super(x, y, 1, 1, 10, #F2F3AE, 1);
  }
  
  void act() {
    super.act ();
    if(collidingWith(player1)){
      lives = 0;
      gunMode ++;
    }
    if (offScreen ()) lives = 0;
  }
  void show() {
    if (gunMode < 16) {
      fill (c);
      circle( x, y, size);
    }
  }
}
