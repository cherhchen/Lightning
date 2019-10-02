int startX = 100;
int startY = 150;
int endX = 100;
int endY = 150;
void setup()
{
  size(500,300);
  strokeWeight(3);
  background(0);
  fill(230, 190, 135);
  ellipse(80,150,25,50);
}
void draw()
{	
	frameRate(8);
	/*frameRate(5);
	int [] backing = {0,255};
	background(backing[(int)(Math.random()*2)]);*/
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	while (endX <= 500) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*20)-10;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mouseDragged()
{
	startX = 100;
	startY = 150;
	endX = 100;
	endY = 150;
}
void mouseReleased(){
	background(0);
}
