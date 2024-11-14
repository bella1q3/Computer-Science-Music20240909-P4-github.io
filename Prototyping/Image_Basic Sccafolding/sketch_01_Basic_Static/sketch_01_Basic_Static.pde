//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float CatX, CatY, CatWidth, CatHeight
PImage picBackground;
//
void setup () {
  size( 1000, 1600 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../Images/Cat.jpg");
  CatX = appWidth;
  CatY = appHeight;
  CatWidth = appWidth;
  CatHeight = appHeight;
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( CatX, CatY, CatWidth, CatHeight );
}
//
void draw () {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
}
//
void mousePressed() {
}
 //
void keyPressed() {
}
//
//End Main
