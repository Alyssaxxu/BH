class Starfighter extends GameObject {

  int cooldown, threshold, livesRenew;


  Starfighter() {
    super( width/2, height/2, 0, 0, 40, #FF0000, 3);
    threshold = 5;
  }

  void act() {

    super.act();


    // managing guns
    cooldown ++;
    if (space&& cooldown>= threshold) {
      if (gunMode == 1) {
        objects.add(new Bullet(x, y+ 20));
      } else if (gunMode == 12) {
        objects.add (new Bullet (x-10, y +20));
        objects.add (new Bullet (x+10, y +20));
      } else if (gunMode == 13) {
        objects.add (new Bullet (x-15, y +20));
        objects.add (new Bullet (x-0, y +20));
        objects.add (new Bullet (x+15, y +20));
      } else if (gunMode == 14) {
        objects.add (new Bullet (x-10, y +20));
        objects.add (new Bullet (x-5, y +20));
        objects.add (new Bullet (x+10, y +20));
        objects.add (new Bullet (x+10, y +20));
      }

      cooldown = 0;
      if (offScreen()) lives = 0;
    }

    // controlling the strafighter
    if (up) vy = -5;
    if (down) vy = 5;
    if (right) vx = 5;
    if (left) vx = -5;



    if (!up && !down) vy = vy * 0.9;
    if (!left && !right) vx = vx * 0.9;

    // collision
    int i = 0;
    while ( i< objects.size ()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith (obj)) {
          lives --;
        }
      }
      i++;
    }
    if (lives <= 0) {
      mode = GAMEOVER;
      lives = 3;
    }
  }


boolean collidingWith (GameObject obj) {
  return dist(obj.x, obj.y, x, y ) < obj.size/2 + size/ 2;
}

boolean offScreen() {
  return x< 0 || x> width || y< - 50 || y> height;
}

void show () {
  y = max(y, 0+size/3);
  x=min(x, width-size/3);
  x = max (x, 0+size/3);
  y = min (y, height-size/3);
  imageMode (CENTER);
  image(ship2, x, y, size, size);
}
}
