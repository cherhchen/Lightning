int startX = 100;
int startY = 150;
int endX = 100;
int endY = 150;
int tall = 140;
boolean press = false;
void setup()
{
  size(500,300);
  strokeWeight(3);
  background(0);
}
void draw()
{	
	/*frameRate(5);
	int [] backing = {0,255};
	background(backing[(int)(Math.random()*2)]);*/
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
	sprayCan();
}

void sprayCan() {
	noStroke();
	fill(128, 124, 107);
	rect(75,tall,20,40,5);
	fill(232, 104, 97);
	rect(50,200,70,130,10);
	ellipse(85,200,70,50);

}