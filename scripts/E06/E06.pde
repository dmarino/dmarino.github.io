PImage p;
PFont f;
int x1, x2,x3,x4;
int btn=0;
int c=0,c0=530,c1=560,c2=590,c3=620;
int r=0;

void setup()
{
  size(640,680);
  p = loadImage("a.png");
  p.loadPixels();
  
  f=loadFont("CFHauntedHouse-Regular-30.vlw");
}

void draw()
{
  background(0);
  noStroke();  
  
  if(mousePressed)
  {
    if(mouseX>=10&&mouseX<=40&&mouseY>=30&&mouseY<=50)
    { 
      if(btn==0)
      {
        btn=1;
      }
      else
      {
        btn=0;
      }   
    }
    else if(mouseX>=c0-10&&mouseX<=c0+10&&mouseY>=10&&mouseY<=30)
    {
      c=0;
    }
    else if(mouseX>=c1-10&&mouseX<=c1+10&&mouseY>=10&&mouseY<=30)
    {
      c=1;
    }
    else if(mouseX>=c2-10&&mouseX<=c2+10&&mouseY>=10&&mouseY<=30)
    {
      c=2;
    }
    else if(mouseX>=c3-10&&mouseX<=c3+10&&mouseY>=10&&mouseY<=30)
    {
      c=3;
    }
    else if(mouseX>=600&&mouseX<=630&&mouseY>=630&&mouseY<=650)
    {
      if(r==0)
      {
        r=1;
      }
      else
      {
        r=0;
      }
    }
  }
  
  x2= (int) random(20,width);
  x3= (int) random(20,width);
  x4= (int) random(10,width);
  
  for(int i=0; i<p.width*p.height;i++)
  {
     int x= i%(p.width);
     int y= i/(p.width); 
     
     if(btn==0)
     {
       if(x==x2 || x==x3 || x==x4)
       {
         if(c==0)
         {
           fill(red(p.pixels[i]),0);
         }
         else if(c==1)
         {
           fill(255,green(p.pixels[i]),blue(p.pixels[i]),0);
         }
         else if(c==2)
         {
           fill(red(p.pixels[i]),255,blue(p.pixels[i]),0);
         }
         else if(c==3)
         {
           fill(red(p.pixels[i]),green(p.pixels[i]),255,0);
         }
       }
       else if(x*2>=x1-10 && x*2<= x1+10)
       {
          if(c==0)
         {
           fill(red(p.pixels[i]),random(0,100));
         }
         else if(c==1)
         {
           fill(255,green(p.pixels[i]),blue(p.pixels[i]),random(0,100));
         }
         else if(c==2)
         {
           fill(red(p.pixels[i]),255,blue(p.pixels[i]),random(0,100));
         }
         else if(c==3)
         {
           fill(red(p.pixels[i]),green(p.pixels[i]),255,random(0,100));
         }
       }
       else
       {
         if(c==0)
         {
           fill(red(p.pixels[i]),random(0,100));
         }
         else if(c==1)
         {
           fill(255,green(p.pixels[i]),blue(p.pixels[i]),random(0,255));
         }
         else if(c==2)
         {
           fill(red(p.pixels[i]),255,blue(p.pixels[i]),random(0,255));
         }
         else if(c==3)
         {
           fill(red(p.pixels[i]),green(p.pixels[i]),255,random(0,255));
         }
       }
       
       if(r==0)
       {
         rect(x*2,y*2,5,5);
       }
       else
       {
          rect((p.width-x)*2,(p.height-y)*2,5,5);
       }
     }
     else
     {
       if(x==x2 || x==x3 || x==x4)
       {
         if(c==0)
         {
           fill(mouseX/2-red(p.pixels[i]),0);
         }
         else if(c==1)
         {
           fill(255,mouseX/2-green(p.pixels[i]),mouseX/2-blue(p.pixels[i]),0);
         }
         else if(c==2)
         {
           fill(mouseX/2-red(p.pixels[i]),255,mouseX/2-blue(p.pixels[i]),0);
         }
         else if(c==3)
         {
           fill(mouseX/2-red(p.pixels[i]),mouseX/2-green(p.pixels[i]),255,0);
         }
       }
       else if(x*2>=x1-10 && x*2<= x1+10)
       {
          if(c==0)
         {
           fill(mouseX/2-red(p.pixels[i]),random(0,100));
         }
         else if(c==1)
         {
           fill(255,mouseX/2-green(p.pixels[i]),mouseX/2-blue(p.pixels[i]),random(0,100));
         }
         else if(c==2)
         {
           fill(mouseX/2-red(p.pixels[i]),255,mouseX/2-blue(p.pixels[i]),random(0,100));
         }
         else if(c==3)
         {
           fill(mouseX/2-red(p.pixels[i]),mouseX/2-green(p.pixels[i]),255,random(0,100));
         }
       }
       else
       {
         if(c==0)
         {
           fill(mouseX/2-red(p.pixels[i]),random(0,100));
         }
         else if(c==1)
         {
           fill(255,mouseX/2-green(p.pixels[i]),mouseX/2-blue(p.pixels[i]),random(0,255));
         }
         else if(c==2)
         {
           fill(mouseX/2-red(p.pixels[i]),255,mouseX/2-blue(p.pixels[i]),random(0,255));
         }
         else if(c==3)
         {
           fill(mouseX/2-red(p.pixels[i]),mouseX/2-green(p.pixels[i]),255,random(0,255));
         }
       }
       
       if(r==0)
       {
         rect(x*2,y*2,5,5);
       }
       else
       {
          rect((p.width-x)*2,(p.height-y)*2,5,5);
       }
     }
  } 



  //movimiento linea
  if(x1>=width*2)
  {
    x1=-50;
  }
  else
  {
    x1=x1+30;
  }
  
  //botones
  fill(255);
  textFont(f,20);
  if(btn==0)
  {
    text("on",10,45);
  }
  else
  {
    text("off",10,45);
  }
  
  if(r==0)
  {
    strokeWeight(3);
    stroke(255);
    line(615,630,615,640);
    
    fill(255);
    triangle(610,640,620,640,615,650);
  }
  else
  {
    strokeWeight(3);
    stroke(255);
    line(615,640,615,650);
    
    fill(255);
    triangle(610,640,620,640,615,630);
  }
  
  fill(0);
  ellipse(c0,20,20,20);
  fill(255,0,0);
  ellipse(c1,20,20,20);
  fill(0,255,0);
  ellipse(c2,20,20,20);
  fill(0,0,255);
  ellipse(c3,20,20,20);
}