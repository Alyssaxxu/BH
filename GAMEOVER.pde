void gameover() {

  background (0);

  fill(#EBDFF2);
  textSize(50);
  text("YOU LOSE!", 400, 200);

  // Play Button
  fill (255);
  rect ( 400, 450, 300, 100);
  fill (0);
  textSize( 30);
  text( "Return to Home", 400, 450);
}



void gameoverClicks() {
  if (mouseX> 250 && mouseX< 550 && mouseY > 400 && mouseY < 500) {
    setup();
    mode = INTRO;
    player1.lives= 3;
  }
}
