void pause() {
  textAlign (CENTER, CENTER);
  textSize(100);
  fill( 255);

  text( "PAUSED", 400, 300);
}

void pauseClicks () {
  if (dist( mouseX, mouseY, 100, 700) < 50) {
    mode = GAME;
  }
}
