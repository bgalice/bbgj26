import ddf.minim.*;

Minim minim;
PImage bg;
AudioPlayer player;
PFont f;

void setup() {
  minim=new Minim(this);
  size(1200, 800);
  bg = loadImage("SlipknotEnding.jpeg");
  pixelDensity(1);
  player = minim.loadFile("Slipknot.mp3");
  player.play();
  
  printArray(PFont.list());
  f = createFont("Sickness.ttf", 50);
  textFont(f);
  textAlign(CENTER, CENTER);

}

void draw() {
  background(bg);
  text("Thank you for playing !",600,700);  
  
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
