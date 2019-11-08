//THIS IS A VERSION OF THE PROGRAM WITH ONLY ONE SLIDER, WHICH CHANGES THE YEAR AND PLAYS A SOUND AT SELECTED TIMES. 
//WE NEED A SILENT SOUND FILE TO PUT WITH THE YEARS THAT DON'T HAVE A SOUND TO STOP IT PLAYING THE SAME SOUND AS BEFORE.

import controlP5.*;
import ddf.minim.*;

ControlP5 cp5;
Year theYear;
int average;
int slider1 = 0;
PImage image;
PImage img;
PFont myFont;
int val;

  
  AudioPlayer playSound;
  Minim minim;

void setup() {
  size(700,400);
  theYear = new Year(); 
  minim = new Minim(this);
  
  theYear.calculateYear();
  val = theYear.getYear();
 
  String sound = theYear.getSound();
  playSound = minim.loadFile(sound, 2048);
  playSound.play();
  
  myFont = createFont("Arial Black", 1.0);
  textFont(myFont);
  
  noStroke();
  cp5 = new ControlP5(this);
  theYear = new Year(); 
  //sound 1
  cp5.addSlider("slider1")
     .setPosition(30,360)
     .setWidth(640)
     .setRange(1500,2018) 
     .setValue(0)
     .setHeight(25)
     .setSliderMode(Slider.FLEXIBLE)
     .setColorBackground(color(5,74,83))
     .setColorForeground(color(200)) 
     .setColorActive(color(200))
     ;
}

void draw() {
  fill(255);
  img = loadImage("background.jpg");
  image = loadImage("logo2.png");
  image(img, 0, 0, 700, 350);
  image(image, 10, 10, 100, 60);
  
  rect(0,345,700,65);
  noFill();
  stroke(255);
  rect(5,5,690,335,0,0,8,8);
  
  theYear.calculateYear();
  if(val != theYear.getYear())
  {
    String sound = theYear.getSound();
    playSound = minim.loadFile(sound, 2048);
    playSound.play();
    val = theYear.getYear();
  }
  theYear.displayInfo();
}