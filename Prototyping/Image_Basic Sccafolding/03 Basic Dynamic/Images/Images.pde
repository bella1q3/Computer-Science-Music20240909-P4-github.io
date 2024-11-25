//Global Variables 
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float monkeysfightingX, monkeysfightingY, monkeysfightingWidth, monkeysfightingHeight;
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
  picBackground = loadImage("../../../../Images/Cat.jpg");
  monkeysfightingX = appWidth * 1/4;
  monkeysfightingY = appHeight * 1/4;
  monkeysfightingWidth = appWidth * 1/2;
  monkeysfightingHeight = appHeight * 1/2;
  picmonkeysfighting = loadImage("../../../../Images/green.jpg");
  picgreenWidthChanged = picgreenWidth = 390;
  picgreen.webpHeightChanged = picmonkeysfightingHeight = 280;
  //
  //Image Compresseion
  float biggerSide = ( picmonkeysfightingWidth > picmonkeysfightingHeight ) ? picmonkeysfightingWidth : picmonkeysfightingHeight ;
  float smallerSide = ( picmonkeysfightingHeight < picmonkeysfightingWidth ) ? picmonkeysfightingHeight : picmonkeysfightingWidth ;
  float ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
   - Establish Landscape or Portrait of DIV
   - Note: I always fill smaller side of DIV, then calculate larger side of DIV
   - Hardcode if ratio will be >1 or <1 ... influences * or /
   - In the image, decide if calculating the larger side or the smaller side
   */
  if ( monkeysfightingWidth > monkeysfightingHeight ) { //DIV Landscape, find larger side
    picmonkeysfightingHeightChanged = monkeysfightingHeight;
    picmonkeysfightingHeightChanged = ( picmonkeysfightingWidth > picmonkeysfightingHeight ) ? picmonkeysfightingWidthChanged / ratio : picmonkeysfightingWidthChanged * ratio;
    println( "Inside If-true:", picmonkeysfightingWidthChanged );
  } else { //DIV Landscape, find Larger side
    picmonkeysfightingWidthChanged = monkeysfightingWidth;
    picmonkeysfightingHeightChanged = ( picmonkeysfightingWidth > picmonkeysfightingHeight ) ? picmonkeysfightingWidthChanged / ratio : picmonkeysfightingtWidthChanged * ratio;
    println( "Inside If-false:", picmonkeysfightingtWidthChanged ) ;
    //
  }
  println( "Changed Width:", picmonkeysfightingWidthChanged, "\tChanged Height:", picmonkeysfightingHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( CatX, CatY, CatWidth, CatHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picmonkeysfighting, monkeysfightingX, monkeysfightingY, picmonkeysfightingWidthChanged, picmonkeysfightingHeightChanged  );
  image( Picmonkeysfighting, monkeysfightingX_Changed, monkeysfightingY_Changed, picmonkeysfightingWidthChanged, picmonkeysfightingHeightChanged  );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//END MAIN
