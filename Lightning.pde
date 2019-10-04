int startX = 100;
int startY = 150;
int endX = 100;
int endY = 150;
boolean press = false;
void setup()
{
  size(500,300);
  strokeWeight(3);
  background(0);
}
void draw()
{  
  frameRate(8);
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if (press == true) {
  while (endX <= 500) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20)-10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
   }
  }
  
  sprayCan(); 
  if (press == true) {
    fill(0);
    rect(70,140,30,10);
    fill(128, 124, 107);
    rect(75,145,20,20,5);
    fill(0);
    ellipse(90,155,5,10);
  }
}
void mouseDragged()
{
  press = true;
  startX = 100;
  startY = 150;
  endX = 100;
  endY = 150;
}
void mouseReleased(){
  press = false;
  background(0);
}
void sprayCan() {
  noStroke();
  fill(128, 124, 107);
  rect(75,140,20,40,5);
  fill(232, 104, 97);
  rect(50,200,70,130,10);
  ellipse(85,200,70,50);
  fill(255);
  textSize(10);
  text("Silly String", 60,230);
  textSize(8);
  text("Click and move mouse to use", 55,250,60,50);
  fill(0);
  ellipse(90,150,5,10);
}

