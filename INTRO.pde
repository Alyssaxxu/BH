void intro() {


  background(0);
  // Play Button
  fill (255);
  rect ( 400, 450, 300, 100);
  fill (0);
  textSize( 50);
  text( "Start", 400, 450);
}

void introClicks() {
  if (mouseX> 250 && mouseX< 550 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
}
