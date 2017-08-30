int x1=10, x2=40,x3=70,x4=100,x5=130,x6=160,x7=190,x8=220,x9=250,x10=570;
int y1=10,y2=70,y3=100,y4=130, y5=160,y6=190,y7=220;
int f=0, c=0,z=4;
int p1x=0, p1y=0, p1c=0;
int z1=340,z2=370;

void setup()
{
  size(600,400);
  background(255);
}
void draw()
{
  
  if (mousePressed)
  {
      //verificar botones
    if((mouseX>=x1&&mouseX<=x1+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=1;
    }
    else if((mouseX>=x2&&mouseX<=x2+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=2;
    }
    else if((mouseX>=x3&&mouseX<=x3+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=3;
    }
    else if((mouseX>=x4&&mouseX<=x4+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=4;
    }
    else if((mouseX>=x5&&mouseX<=x5+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=5;
    }
    else if((mouseX>=x6&&mouseX<=x6+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=6;
    }
    else if((mouseX>=x7&&mouseX<=x7+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=7;
    }
    else if((mouseX>=x8&&mouseX<=x8+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=8;
    }
    else if((mouseX>=x9&&mouseX<=x9+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      f=9;
    }
    
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y1&&mouseY<=y1+20))
    {
      background(255);
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y2&&mouseY<=y2+20))
    {
      c=1;
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y3&&mouseY<=y3+20))
    {
      c=2;
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y4&&mouseY<=y4+20))
    {
      c=3;
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y5&&mouseY<=y5+20))
    {
      c=4;
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y6&&mouseY<=y6+20))
    {
      c=5;
    }
    else if((mouseX>=x10&&mouseX<=x10+20&&mouseY>=y7&&mouseY<=y7+20))
    {
      c=6;
    } 
    else if((mouseX>=x1&&mouseX<=x1+20&&mouseY>=z1&&mouseY<=z1+20))
    {
      z=z+1;
    }
     else if((mouseX>=x1&&mouseX<=x1+20&&mouseY>=z2&&mouseY<=z2+20))
    {
      if(z>4)
      z=z-1;
    }
    
    //dibujar
    else
    {
      if(f==1)
      {
        fill(255,0,0);
        stroke(255,0,0);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==2)
      {
        fill(255,128,0);
        stroke(255,128,0);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==3)
      {
        fill(255,255,0);
        stroke(255,255,0);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==4)
      {
        fill(0,255,255);
        stroke(0,255,255);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==5)
      {
        fill(0,255,0);
        stroke(0,255,0);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==6)
      {
        fill(0,128,255);
        stroke(0,128,255);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==7)
      {
        fill(255,0,127);
        stroke(255,0,127);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==8)
      {
        fill(127,0,255);
        stroke(127,0,255);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
      else if(f==9)
      {
        int r= (int)random(0,255);
        int g= (int)random(0,255);
        int b=(int)random(0,255);
        fill(r,g,b);
        stroke(r,g,b);
        strokeWeight(z/4);
        if(c==1)
        {
          ellipse(mouseX,mouseY,20*z/4,20*z/4);         
        }
        else if(c==2)
        {
          rect(mouseX,mouseY,20*z/4,20*z/4);
        }
        else if(c==3)
        {

          line(mouseX,mouseY,mouseX+10,mouseY+10);
        }
        else if(c==4)
        {
          triangle(mouseX+10*z/4,mouseY+10*z/4,mouseX,mouseY-10*z/4,mouseX-10*z/4,mouseY+10*z/4);
        }
        else if(c==5)
        {
          ellipse(mouseX+10*z/4,mouseY+5*z/4,10*z/4,10*z/4);
          line(mouseX+10*z/4,mouseY+10*z/4,mouseX+10*z/4,mouseY+17*z/4);
          line(mouseX+2*z/4,mouseY+13*z/4,mouseX+18*z/4,mouseY+13*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+5*z/4,mouseY+20*z/4);
          line(mouseX+10*z/4,mouseY+17*z/4,mouseX+15*z/4,mouseY+20*z/4);
        }
        else if(c==6)
        {
          if(p1c==0)
          {
            p1x=mouseX;
            p1y=mouseY;
            p1c=1;
          }
          else
          {
            line(p1x,p1y,mouseX,mouseY);
            p1c=0;
          } 
        }
      }
    }
  }
  
  
  //botones
  
  //colores
  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  rect(x1,y1,20,20);
  fill(255,128,0);
  rect(x2,y1,20,20);
  fill(255,255,0);
  rect(x3,y1,20,20);
  fill(0,255,255);
  rect(x4,y1,20,20);
  fill(0,255,0);
  rect(x5,y1,20,20);
  fill(0,128,255);
  rect(x6,y1,20,20);
  fill(255,0,127);
  rect(x7,y1,20,20);
  fill(127,0,255);
  rect(x8,y1,20,20);
  
  //multicolor
  fill(0);
  rect(x9,y1,20,20);  
  noStroke();
  fill(255,0,0);
  rect(x9,y1,5,21);
  fill(255,128,0);
  rect(x9+5,y1,5,21);
  fill(255,255,0);
  rect(x9+10,y1,5,21);
  fill(128,255,0);
  rect(x9+15,y1,6,21);
    
  //borrar
  stroke(0);
  fill(255);
  rect(x10,y1,20,20);
  stroke(255,0,0);
  line(x10,y1,x10+20,y1+20);
  line(x10+20,y1,x10,y1+20);
  
  //formas basicas
  fill(0);
  stroke(0);
  
  ellipse(x10+10,y2+10,20,20);
  rect(x10,y3,20,20);
  line(x10,y4,x10+20,y4+20);
  triangle(x10,y5+20,x10+10,y5,x10+20,y5+20);
  line(x10,y7+10,x10+20,y7+10);
    
  //persona
  ellipse(x10+10,y6+5,10,10);
  line(x10+10,y6+10,x10+10,y6+17);
  line(x10+2,y6+13,x10+18,y6+13);
  line(x10+10,y6+17,x10+5,y6+20);
  line(x10+10,y6+17,x10+15,y6+20);
  
  //zoom
  
  line(x1+10,z1,x1+10,z1+20);
  line(x1,z1+10,x1+20,z1+10);
  
  line(x1,z2+10,x1+20,z2+10);
}