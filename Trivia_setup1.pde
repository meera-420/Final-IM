// Arduino 
import processing.serial.*;
Serial myPort;
// modes to switch from
int mode = 0;
int top = 0;
int bottom = 0;
// the images int
PImage  start  ;
PImage Q1;
PImage Q2;
PImage Q3;
PImage Q4;
PImage Q5;
PImage Q6;
PImage Q7;
PImage Q8;
PImage Q9;
PImage Q10;
PImage Replay;
//sound stuff
import processing.sound.*;
SoundFile song;
// font 
PFont font; 
// stuff for the change of question 
int input = -1 ;
void setup () {
  size( 1000, 1000);  
  //Images 
  start   = loadImage ("CB.jpg");
  Q1 = loadImage("KQ.jpg");
  Q2 = loadImage("CQ.jpg");
  Q3 = loadImage("WQ.jpg");
  Q4 = loadImage("FQ.jpg");
  Q5 = loadImage("TQ.jpeg");
  Q6 = loadImage("DQ.jpg");
  Q7 = loadImage("MQ.jpg");
  Q8 = loadImage("NQ.jpg");
  Q9 = loadImage("BQ.jpg");
  Q10 = loadImage("XQ.jpg");
  Replay = loadImage("EG.jpg");
  // Sound
  song = new SoundFile( this, "Chasing Your Tail.mp3");
  song.loop();
  song.amp(.2);

  //serial
  printArray(Serial.list());
  String portname=Serial.list()[4];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  // Font
  font = loadFont("Chalkduster-48.vlw");
  textFont(font);
}
void draw() {
  // Opening to the Game :
  if (mode == 0 ) { 
    background (0);
    image(start, 0, 0, 1000, 1000);
    textAlign(CENTER);
    textSize(45);
    fill(255);
    text( "Come on Kids, Let us play Trivia ", width/2, height/2 - 85);
    textSize(25);
    fill(240, 240, 240);
    text( "Press space to start", width/2-15, height/2 -20);
  }
  // How to play menu :
  if (mode==1) {
    background(58, 229, 127);
    textAlign(CENTER);
    textSize(55);
    fill(255);
    text(" How to Play: ", width/2, height/2-300);
    textAlign(CENTER);
    textSize(50);
    fill(255);
    text("Press GREEN for choice A", width/2, height/2-95);
    textAlign(CENTER);
    textSize(50);
    fill(255);
    text("Press RED for choice B", width/2, height/2-25);
    textAlign(CENTER);
    textSize(25);
    fill(255);
    text("now press 'p' to start playing", width/2, height/2+ 30);
  }
  // question 1
  if (mode == 2) {
    background (0);
    image(Q1, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("Which country is the home of a Kangaroo?", width/2-15, height/2-100);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) Australia", width/2, height/2-55);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) Japan", width/2, height/2-15);
    if (input==1) {
      //check solution
      mode =3 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  // question 2
  if (mode==3) {
    background(0);
    image (Q2, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("How many colors are in a rainbow?", width/2-15, height/2-100);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) 10", width/2, height/2-55);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) 7", width/2, height/2-15);
    if (input==2) {
      //check solution
      mode =4 ;
      input=-1;
    } else if (input ==1) { 
      mode =14;
      input = -1;
    }
  }
  // question 3
  if (mode ==4) {
    background(0);
    image (Q3, 0, 0, 1000, 1000);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("How many legs does a spider have?", width/2-15, height/2-200);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("A) 6", width/2, height/2-155);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("B) 8", width/2, height/2-115);
    if (input==2) {
      //check solution
      mode =5 ;
      input=-1;
    } else if (input ==1) { 
      mode =14;
      input = -1;
    }
  }
  // question 4
  if (mode ==5) {
    background(0);
    image (Q4, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("Which fruit is Yellow ?", width/2-15, height/2-200);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) Banana", width/2, height/2-155);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) Apple", width/2, height/2-115);
    if (input==1) {
      //check solution
      mode =6 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  // question 5
  if (mode ==6) {

    background(0);
    image (Q5, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("What sense do you use to know something is Hot/Cold?", width/2-15, height/2-400);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) Touch", width/2-70, height/2-355);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) Smell", width/2-60, height/2-315);
    if (input==1) {
      //check solution
      mode =7 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  // question 6
  if (mode ==7) {

    background(0);
    image (Q6, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("Who fixes your teeth?", width/2-15, height/2-400);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("A) Doctor ", width/2, height/2-355);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("B) Dentist", width/2, height/2-315);
    if (input==2) {
      //check solution
      mode =8 ;
      input=-1;
    } else if (input ==1) { 
      mode =14;
      input = -1;
    }
  }
  // question 7
  if (mode ==8) {
    background(0);
    image (Q7, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("What sound does a cow make?", width/2-15, height/2-100);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) Moo", width/2, height/2-55);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) Meow", width/2, height/2-15);
    if (input==1) {
      //check solution
      mode =9 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  //question 8
  if (mode ==9) {
    background(0);
    image (Q8, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("What type of fish is Nemo?", width/2-255, height/2-300);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) Clownfish", width/2, height/2-255);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) Tuna", width/2, height/2-215);
    if (input==1) {
      //check solution
      mode =10 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  //question 9

  if (mode ==10) {
    background(0);
    image (Q9, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("How many pairs of wings does a bee have?", width/2-15, height/2-100);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("A) 2", width/2, height/2-55);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("B) 4", width/2, height/2-15);
    if (input==1) {
      //check solution
      mode =11 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }

  //question 10
  if (mode ==11) {
    background(0);
    image (Q10, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("When is Christmas?", width/2-15, height/2-100);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("A) Dec 25", width/2, height/2-55);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("B) Dec 30", width/2, height/2-15);
    if (input==1) {
      //check solution
      mode =12 ;
      input=-1;
    } else if (input ==2) { 
      mode =14;
      input = -1;
    }
  }
  // End game 
  if (mode ==12) {
    background(0);
    image (Replay, 0, 0, 1000, 800);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("CONGRATS!!!!!", width/2-15, height/2-300);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("you made it to the finish line!!!!!", width/2, height/2-155);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("to return to the start press R ", width/2, height/2-15);
  }
  if (mode == 14) { 
    background (255, 0, 0);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("WRONG", width/2-15, height/2-300);
    textAlign(CENTER);
    textSize(30);
    fill(0);
    text("to play again press 'r' ", width/2, height/2-15);
  }
}
void serialEvent(Serial myPort) {
  top =myPort.read();
  input = top ;
  myPort.write(0);
  println(top);
}

void keyPressed() {

  //for (int i=0; i<13; i++){
  //  mode +=1;
  //}
  if (key==' ') {
    if (mode==0) {
      mode=1;
    } else if (mode==1) {
      mode=0;
    }
  }
  if (key =='r') {
    if (mode==14) {
      mode=0;
    } else if (mode==0) {
      mode=14;
    }
  }
  if (key =='r') {
    if (mode==12) {
      mode=1;
    } else if (mode==1) {
      mode=12;
    }
  }     
  if (key =='p') {
    if (mode==1) {
      mode=2;
    } else if (mode==2) {
      mode=1;
    }
  }
}
