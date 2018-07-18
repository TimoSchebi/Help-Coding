toggleButton OnOffTest;
tabButton tabButtonTest;
tabButton2 tabButtonTest2;
PFont myFontUI;
PFont myFont;
PFont myFont1;
PFont myFont2;
PFont myFont3;
PFont myFont4;
PImage myImage1;
PImage myImage2;
PImage myImage3;
PImage myImage4;
PImage myImage5;
PImage myImage6;
PImage myImage7;
PImage myImage8;
PImage myImage9;
PImage myImage10;
PImage myImage11;
PImage myImage12;






void setup() {
  size(1024, 768);
  OnOffTest = new toggleButton(100, 130);
  tabButtonTest = new tabButton(30, 250, 4);
  tabButtonTest2 = new tabButton2(30, 350, 4);
  myFontUI = createFont("lmmono10-regular.otf", 32);
  myFont = createFont("Montserrat-Regular.ttf", 25);
  myFont1 = createFont("Blacksword.otf", 25);
  myFont2 = createFont("Raleway-ExtraLight.ttf", 25);
  myFont3 = createFont("riesling.ttf", 40);
  myFont4 = createFont("Montserrat-Bold.ttf", 40);
  myImage1 = loadImage("Lederweiß.png");
  myImage2 = loadImage("Stoffweiß.png");
  myImage3 = loadImage("verlauf-bg.png");
  myImage4 = loadImage("Stoffgrün.png");
  myImage5 = loadImage("Stoffblau.png");
  myImage6 = loadImage("Stoffblauohne.png");
  myImage7 = loadImage("Stoffblauholz.png");
  myImage8 = loadImage("Stoffgrünohne.png");
  myImage9 = loadImage("Stoffgrünholz.png");
  myImage10 = loadImage("Stoffweißohne.png");
  myImage11 = loadImage("Stoffweißholz.png");
  textFont(myFontUI);
}

void draw() {
  colorMode(RGB, 255, 255, 255);
  background(myImage3);  
  noTint();
  colorMode(HSB, 0, 0, 0);
  fill(0,0,0);
  textFont(myFontUI);
  text("Stoff", 15, 150);
  text("Leder", 165, 150);
  text("Farbvariation", 20, 230);
  text("Ausstattung", 35, 330);
  textFont(myFont4);
  text("Couchkonfigurator", 270, 40);
  
 

  colorMode(RGB, 0, 0, 0);
  fill(0);
 
  
  
  
  
  //zeichen der Interfaceelemente
  OnOffTest.draw();
  tabButtonTest.draw();
  tabButtonTest2.draw();
  
  // "OnOffTest" bestimmt ob leder/Stoff
  noStroke();
  if (OnOffTest.myStateActive) {
    image(myImage2,280, 110);
  } else {
    image(myImage1,280, 110);
  }
    


  // "tabButtonTest" bestimmt 3 farbvarianten
  if (OnOffTest.myStateActive) {
  if (tabButtonTest.activeTab == 0) {
    image(myImage2, 280, 110);
  } else if (tabButtonTest.activeTab == 1) {
    image(myImage4, 280, 110);
  } else if (tabButtonTest.activeTab == 2) {
      image(myImage5, 280, 110);
  }
  }
  
   // "tabButtonTest2" bestimmt 3 farbvarianten
  if (OnOffTest.myStateActive) {
    if (tabButtonTest.activeTab == 0) {
  if (tabButtonTest2.activeTab == 0) {
    image(myImage5, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 1) {
  image(myImage7, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 2) {
  image(myImage6, 280, 110);
  }
  }
  }
  
  if (OnOffTest.myStateActive) {
    if (tabButtonTest.activeTab == 1) {
  if (tabButtonTest2.activeTab == 0) {
    image(myImage4, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 1) {
  image(myImage9, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 2) {
  image(myImage8, 280, 110);
  }
  }
  }
  
    if (OnOffTest.myStateActive) {
    if (tabButtonTest.activeTab == 2) {
  if (tabButtonTest2.activeTab == 0) {
    image(myImage2, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 1) {
  image(myImage11, 280, 110);
  } 
  else if (tabButtonTest2.activeTab == 2) {
  image(myImage10, 280, 110);
  }
  }
  }
  
 
  
  //der in "textFieldTest" geschriebene Text wird abgebildet
  
}

void mousePressed() {
  OnOffTest.mousePressed();
  tabButtonTest.mousePressed();
  tabButtonTest2.mousePressed();
}

void mouseDragged() {
}

void mouseReleased() {
}

void keyPressed() {
}



boolean insideRect(int xPos, int yPos, int targetXPos, int targetYPos, int targetWidth, int targetHeight) {
  if (xPos > targetXPos && xPos < targetXPos + targetWidth && yPos > targetYPos && yPos < targetYPos + targetHeight) {
    return true;
  }
  return false;
}
