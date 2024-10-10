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
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
int appWidth, appHeight;
//
void setup()
{
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  musicButtonDIV_Width = appWidth*1/2;
  musicButtonDIV_Height = appHeight*1/2;
  musicButtonDIV_X = musicButtonDIV_Width - musicButtonDIV_Width*1/2;
  musicButtonDIV_Y = musicButtonDIV_Height- musicButtonDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population (Variables)
  //Work out a case Study: 
  if ( musicButtonDIV_Width >= musicButtonDIV_Height ) { // Landscape //error: square does not go in the middle
   // musicButtonWidth needs to change
   musicButtonSquareWidth = musicButtonDIV_Height ;
   musicButtonSquareHeight = musicButtonDIV_Height ;
   float padding1 = musicButtonDIV_Width - musicButtonDIV_Height; //working out value needed, with formulae
   float padding2 = padding1*1/2; ////working out value needed, with formulae
   musicButtonSquareX = musicButtonDIV_X + padding2 ; //note: minus moves it the wrong way, difficult to see
   musicButtonSquareY = musicButtonDIV_Y;
   println( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
   println ( musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight );
   println ( padding1 );
   } else { //Portrait
   // musicButtonHeight needs to change
   musicButtonSquareWidth = musicButtonDIV_Width ;
   musicButtonSquareHeight = musicButtonDIV_Width;
   float padding1 = musicButtonDIV_Height - musicButtonDIV_Width; //working out value needed, with formulae
   float padding2 = padding1*1/2; ////working out value needed, with formulae
   musicButtonSquareX = musicButtonDIV_X; //note: minus moves it the wrong way, difficult to see
   musicButtonSquareY = musicButtonDIV_Y + padding2;
float musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height;
float musicButtonSquareX, musicButtonSquareY, musicButtonSquareWidth, musicButtonSquareHeight;
float stopX, stopY, stopWidth, stopHeight;
//
void divs() {
  //rect( X, Y, Width, Height );
  rect( musicButtonDIV_X, musicButtonDIV_Y, musicButtonDIV_Width, musicButtonDIV_Height );
} //End DIVs
