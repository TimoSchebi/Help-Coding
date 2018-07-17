class tabButton2 {
  int myXPos = 0;
  int myYPos = 0;
  int myWidth = 202;
  int myHeight = 30;
  int numOfTabs;
  color backgroundColor = color(30, 30, 30);
  color inactiveColor = color(150, 150, 150);
  color forgroundColor = color(200, 200, 200);
  int activeTab = 0;

  tabButton2(int xPos, int yPos, int nTabs) {
    myXPos = xPos;
    myYPos = yPos;
    numOfTabs = 3;
  }

  void draw() {
    pushMatrix();
    translate(myXPos, myYPos);
    noStroke();
    fill(backgroundColor);
    rect(0, 0, myWidth, myHeight, 8);
    fill(forgroundColor);
    for (int i = 0; i < numOfTabs; i++) {
      if (i == activeTab) {
        fill(forgroundColor);
      } else {
        fill(inactiveColor);
      }
      if (i == 0) {
        rect(0+2 + i * (myWidth-2)/numOfTabs, 0+2, (myWidth-4)/numOfTabs-2, myHeight-4, 5, 0, 0, 5);
      } else if (i == numOfTabs-1) {
        rect(0+2 + i * (myWidth-2)/numOfTabs, 0+2, (myWidth-4)/numOfTabs-2, myHeight-4, 0, 5, 5, 0);
      } else {
        rect(0+2 + i * (myWidth-2)/numOfTabs, 0+2, (myWidth-4)/numOfTabs-2, myHeight-4);
      }
    }
    popMatrix();
    
  }


  void mousePressed() {
    for (int i = 0; i < numOfTabs; i++) {
      if (insideRect(mouseX, mouseY, myXPos+2 + i * (myWidth-2)/numOfTabs, myYPos+2, (myWidth-4)/numOfTabs-2, myHeight-4)) {
        activeTab = i;
      }
    }
  }
}
