int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float CatX, CatY, CatWidth, CatHeight;
PImage picBackground, picmonkeysfighting;
int picmonkeysfightingWidth, picmonkeysfightingHeight;
float monkeysfightingX_Changed, monkeysfightingY_Changed;
float picmonkeysfightingWidthChanged, picmonkeysfightingHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 900, 800 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../Images/grass.jpg");
  monkeysfightingX = appWidth * 1/4;
  monkeysfightingY = appHeight * 1/4;
  monkeysfightingWidth = appWidth * 1/2;
  monkeysfightingHeight = appHeight * 1/2;
  picmonkeysfighting = loadImage("../../../../Images/Cat.jpg");
  picmonkeysfightingWidthChanged = picWidth = 612;
  picmonkeysfightingHeightChanged = picmonkeysfightingHeight = 463;
  //
  //Image Compresseion
   biggerSide = ( picmonkeysfightingWidth > picmonkeysfightingHeight ) ? picmonkeysfightingWidth : picmonkeysfightingHeight ;
  smallerSide = ( picmonkeysfightingHeight < picmonkeysfightingWidth ) ? picmonkeysfightingHeight : picmonkeysfightingWidth ;
  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( monkeysfightingWidth > monkeysfightingHeight ) { //DIV Landscape, find larger side
  picmonkeysfightingHeightChanged = monkeysfightingHeight;
  picPitbullFightHeightChanged = ( picPitbullFightWidth > picPitbullFightHeight ) ? picPitbullFightWidthChanged / ratio : picPitbullFightWidthChanged * ratio;
  println( "Inside If-true:", picPitbullFightWidthChanged );
  } else { //DIV Landscape, find Larger side
    picPitbullFightWidthChanged = PitbullFightWidth;
    picPitbullFightHeightChanged = ( picPitbullFightWidth > picPitbullFightHeight ) ? picPitbullFightWidthChanged / ratio : picPitbullFightWidthChanged * ratio;
    println( "Inside If-false:", picPitbullFightWidthChanged ) ;
    //
  }
  println( "Changed Width:", picPitbullFightWidthChanged, "\tChanged Height:", picPitbullFightHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( bikeX, bikeY, bikeWidth, bikeHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picPitbullFight, PitbullFightX, PitbullFightY, picPitbullFightWidthChanged, picPitbullFightHeightChanged  );
  image( PicgrassFight, grassX_Changed, grassY_Changed, picgrassWidthChanged, picgrassHeightChanged ); 
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//END MAIN
