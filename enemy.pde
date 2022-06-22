class Enemy extends GameObject {

  int cooldown, threshold;


  Enemy() {
    super(random(width), -20, 0, 3, 40, #D9CFC1, 1);
    threshold = 75;
    cooldown = 0;
  }

  void act() {
    super.act();

    //shoot
    cooldown++;
    if (cooldown == threshold) {
      objects.add(new EnemyBullet(x, y+20, 0, 5));

      cooldown = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          bossspawn++;
          lives--;
          obj.lives = 0;
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
        }
      }
      i++;
    }
    if (offScreen()) lives = 0;
  }
}
