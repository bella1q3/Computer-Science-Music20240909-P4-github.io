import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
void setup()
{
  size(900, 800);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String Engel = "Engel";
  String Parabola = "Parabola";
  String FortySix2 = "FortySix2";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  println ( currentSong, directory );
  String file = directory + Engel + mp3FileName;
  println (file);
  //
  song[currentSong] = minim.loadFile( "../../../Music/Engel.mp3" );
  //
  //song[currentSong+=1] = minim.loadFile( "../../../Music/Parabola.mp3" );
  song[1].play();
  //song[currentSong+=1] = minim.loadFile( "../../../Music/FortySix2.mp3);
  //song[currentSong+=1] = minim.loadFile( "../../../Music/Engel.mp3)
  song[currentSong].play();
  
  //Add currentSong as hardcoded link
  //Use play(timeStart) & loop(numberOfLoops)
  //Inspect with println
  //Purpose is 2D Shapes
  //Introduce keyPressed as keyboard shortcuts
  //Introduce mousePressed as interaction
  //
  //Future Problem Fixed
  //Engel.play();
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
