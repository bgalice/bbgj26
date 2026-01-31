import ddf.minim.*;

Minim minim;
PImage bg;
AudioPlayer player;
PFont f;

void setup() {
  minim=new Minim(this);
  size(1200, 800);
  bg = loadImage("ImSlipknotEnding.jpeg");
  pixelDensity(1);
  player = minim.loadFile("BeforeIForget.mp3");
  player.play(155000);
  
  printArray(PFont.list());
  f = createFont("Sickness.ttf", 70);
  textFont(f);
  textAlign(CENTER, CENTER);

}

void draw() {
  background(bg);
  text("Thank you for playing ",600,200);
  f = createFont("Sickness.ttf", 30);
  textFont(f);
  text("Developement : Bruno and Gauvain GALICE",600,300);
  text("Game design : Gauvain GALICE",600,400);
  text("Visuals : Mahaut GALICE",600,500);
  f = createFont("Sickness.ttf", 25);
  textFont(f);
  text("Music used without permitions, all credits goes to the band Slipknot, thanks to them",600,750);
  noLoop();
}

void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  }
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}
