import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 8; //Able to Autodetect based on Pathway
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String ghostWalk = "Ghost_Walk";
  String groove = "groove";
  String newsroom = "Newsroom";
  String startYourEngines = "Start_Your_Engines";
  String theSimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  String file = directory + groove + mp3FileName;
  song[currentSong] = minim.loadFile( file );
  file = directory + startYourEngines + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + beatYourCompetition + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + cycles + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + eureka + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + ghostWalk + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + newsroom + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + theSimplest + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  //
  currentSong = 0;
  //
  song[currentSong].play();
  //Use play(timeStart) & loop(numberOfLoops)
=======
  String Beat_Your_Competition.mp3 = "Beat_Your_Competition.mp3";
  String 
  String 
  //
  //Add Reading into Array
  song[currentSong] = minim.loadFile("../../Music/ ); //..//../+ musicPathway + + mp3FileName);
  song[currentSong].play();
  song[] = minim.loadfile();
  song[] = minim.loadfile();
  song[] = minim.loadfile();
  //Add currentSong as hardcoded link
  //Use play(timeStart) & loop(numberOfLoops)
  //Inspect with println
>>>>>>> Stashed changes
  //Purpose is 2D Shapes
  //Introduce keyPressed as keyboard shortcuts
  //Introduce mousePressed as interaction
  //
<<<<<<< Updated upstream
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
=======
  //Future Problem Fixed
  //beatYourCompetition.play();
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)

>>>>>>> Stashed changes
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
