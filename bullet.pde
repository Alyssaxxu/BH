class Bullet extends GameObject {

  Bullet(float x, float y) {
    super(player1.x, player1.y, 0, -10, 15, #FF0000, 1);
  }

  void act() {
    super.act () ;
    if (offScreen() ) lives = 0;
  }
}
