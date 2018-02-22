private double fractionLength = 0.8; 

private int smallestBranch = 5; 

private double branchAngle = .35;  

public void setup() 
{   
  size(700,420);    
  noLoop(); 

} 

public void draw() 

{ 

  background(23,25,100);

  strokeWeight(1);
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));   
  line(300,580,400,380);   

  drawBranches(400,380,100,3*Math.PI/2);

} 

public void drawBranches(int x,int y, double branchLength, double angle) 

{   

  

  double angle1;

  double angle2;

  int endX1, endX2, endY1, endY2;

  branchLength = branchLength*fractionLength;

  angle1 = angle + branchAngle;

  angle2 = angle - branchAngle;

  endX1 = (int)(branchLength*Math.cos(angle1) + x);

  endY1 = (int)(branchLength*Math.sin(angle1) + y);

  endX2 = (int)(branchLength*Math.cos(angle2) + x);

  endY2 = (int)(branchLength*Math.sin(angle2) + y);


  line(x,y,endX1,endY1);

  line(x,y,endX2,endY2);

  if (branchLength > smallestBranch)

  {

stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));   
    drawBranches(endX1,endY1,branchLength,angle1);

    drawBranches(endX2,endY2,branchLength,angle2);

  }

}
