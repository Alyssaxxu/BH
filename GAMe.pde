void game() {
  background (0);
  fill(255);
  textSize( 10);
  debug ();

  // pause button
  stroke(0);
  fill(255);
  circle( 100, 700, 100);
  fill(0);
  textSize( 25);
  text( "PAUSE", 100, 700);
  fill(255);

  addObjects() ;
  gameEngine ();
  debug ();
}

void addObjects() {
  objects.add(0, new Star());

  if (frameCount % 30 ==0)  objects.add(new Enemy ());
  if (frameCount % 250 == 0 ) objects.add(new Enemy2());
  if (frameCount % 360 == 0) objects.add(new Enemy3 ());
  if (bossspawn ==2) {
    //objects.add(new Enemy4());
    bossspawn = 0;
  }
}

void gameEngine () {
  int i =0;
  while (i< objects.size()) {
    GameObject s= objects.get(i);
    s.act();
    s.show();
    if (s.lives== 0) {
      objects.remove(i);
    } else {
      i ++;
    }
  }
}

void debug() {
  text (frameRate, 30, 30);
  text(objects.size(), 30, 40);
}

void gameClicks() {
  if (dist( mouseX, mouseY, 100, 700) < 50) {
    mode = PAUSE;
  }
}
