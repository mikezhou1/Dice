
void setup()
{
  size(300,350);
  textAlign(CENTER);
  textSize(50);
	noLoop();
}
void draw()
{
  int totalvalue=0;
	background(192);
  for (int y =5; y<280; y=y+60)
  {
    for(int x=5; x<280; x=x+60){
    Die Mike = new Die(x,y);
    Mike.roll();
    Mike.show();
    totalvalue+=Mike.value;
    }
  }
  text(totalvalue,200,340);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int value,myx,myy;
	Die(int x, int y) //constructor
	{
    value=0;
    myx=x;
    myy=y;
	}
	void roll()
	{
    value=(int)(Math.random()*6+1);
    
	}
	void show()
	{
	noStroke();
  fill(255);
  rect(myx,myy,50,50);
  int siz=15;
  if(value==1){
    fill(0);
    ellipse(myx+25,myy+25,siz,siz);
    value=value+1;
  }else if(value==2){
    fill(0);
    ellipse(myx+10,myy+10,siz,siz);
    ellipse(myx+40,myy+40,siz,siz);
    value=value+1;
  }
  else if(value==3){
    fill(0);
    ellipse(myx+13,myy+13,siz,siz);
    ellipse(myx+26,myy+26,siz,siz);
    ellipse(myx+39,myy+39,siz,siz);
    value=value+1;
	}
else if(value==4){
    fill(0);
    ellipse(myx+10,myy+10,siz,siz);
    ellipse(myx+40,myy+10,siz,siz);
    ellipse(myx+10,myy+40,siz,siz);
    ellipse(myx+40,myy+40,siz,siz);
    value=value+1;
  }
  else if(value==5){
    fill(0);
    ellipse(myx+10,myy+10,siz,siz);
    ellipse(myx+40,myy+10,siz,siz);
    ellipse(myx+25,myy+25,siz,siz);
    ellipse(myx+10,myy+40,siz,siz);
    ellipse(myx+40,myy+40,siz,siz);
    value=value+1;
  }
  else if(value==6){
    fill(0);
    ellipse(myx+13,myy+10,siz,siz);
    ellipse(myx+13,myy+26,siz,siz);
    ellipse(myx+13,myy+43,siz,siz);
    ellipse(myx+39,myy+10,siz,siz);
    ellipse(myx+39,myy+26,siz,siz);
    ellipse(myx+40,myy+43,siz,siz);
    value=value+1;
  }
}
}
