abstract class GameObject {

  float x, y, vx, vy, size;
  color c;
  int lives;

  GameObject (float x, float y, float vx, float vy, float size, color c, int lives) {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.size = size;
    this.c = c;
    this.lives = lives;
  }

  void act() {
    x += vx;
    y += vy;
  }

  void show() {
    fill (c);
    square(x, y, size);
  }

  boolean collidingWith (GameObject obj) {
    return dist ( obj.x, obj.y, x, y) < obj.size/2 + size/2 ;
  }

  boolean offScreen() {
    return x< -200  || x> width + 200|| y< -200 || y> height + 200;
  }
}
