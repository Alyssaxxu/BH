// GLOBAL CARIABLES
int shipLives, bossspawn;

final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
int mode;

PImage ship2;

boolean up, down, left, right, space;

final int SINGLE = 11;
final int DOUBLE = 12;
final int TRIPLE = 13;
final int QUADRUPLE = 14;
final int PENTUPLE = 15;

int gunMode;
float explosionSize;

ArrayList <GameObject> objects;
Starfighter player1;

void setup() {
  textAlign(CENTER, CENTER);
  size( 800, 800);
  shipLives = 3;
  explosionSize = 0.5;
  gunMode = 11;
  mode = INTRO;
  rectMode(CENTER);
  
  ship2 = loadImage("spaceship.png");

  objects = new ArrayList <GameObject> ();
  player1 = new Starfighter() ;
  objects.add(player1);
}

void draw () {
  if (mode == INTRO)           intro();
  else if (mode == GAME)       game();
  else if (mode ==GAMEOVER)    gameover();
  else if (mode == PAUSE)      pause();
}
