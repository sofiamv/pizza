import processing.sound.*;
SoundFile sound;
void setup(){
sound = new SoundFile (this, "ding.wav");
size(800,800);
fill(237,222,194);
ellipse(400,400,500,500);
fill(200,0,0);
ellipse(400,400,400,400);
fill(255,200,98);
ellipse(400,400,360,360);
}
void draw(){
PImage face = loadImage ("smile.ppm.gif");
PImage cat = loadImage ("kitten.ppm.gif");
PImage pepperoni = loadImage ("pepperoni.ppm.gif");
pepperoni.resize(10,10);
if (mousePressed){
  if (mousePressed && (mouseButton == RIGHT)){
    image(pepperoni, mouseX,mouseY);
    sound.play();
  }
  if (mousePressed && (mouseButton == LEFT)){
    image(cat, mouseX,mouseY);
image(face, mouseX,mouseY);
sound.play();
  }
}
}