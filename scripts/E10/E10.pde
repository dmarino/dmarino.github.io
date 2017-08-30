Cardumen peces;
void setup()
{
  size(200,200,P3D); 
  //peces misma gama de color
  //peces = new Cardumen(50,1,255);
  
  //peces misma direccion
  //peces = new Cardumen(50,0);
  
  //peces mismo color especifico y angulo especifico
  peces = new Cardumen(50,90, 255,138,0);
  
  //peces mismo color especifico
  //peces = new Cardumen(50, 255,138,0);
  
  //todo aleatorio
  //peces= new Cardumen(50);
}

void draw()
{
  background(0,204,204);
  peces.nadar();
  peces.dibujar();
}

class Cardumen{
  
  Pez[] peces;
  int cantidad;
  
  public Cardumen(int pCantidad)
  {
    cantidad= pCantidad;
    peces= new Pez[cantidad];
    
    for(int i=0;i<cantidad;i++)
    {
      float num = random(0.5,10);
      int n = (int)num;
      
      if(num>5 && n%2==0)
      {
         peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),(int)random(0,255),(int)random(0,255),num,(int)random(0,360),1);

      }
      else
      {
        peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),(int)random(0,255),(int)random(0,255),random(0.5,10),(int)random(0,360));
      }
    }
  }
  
  public Cardumen(int pCantidad, int r, int g, int b)
  {
    cantidad= pCantidad;
    peces= new Pez[cantidad];
    
    for(int i=0;i<cantidad;i++)
    {
      float num = random(0.5,10);
      int n = (int)num;
      
      if(num>5 && n%2==0)
      {
         peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),r,g,b,num,(int)random(0,360),1);

      }
      else
      {
        peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),r,g,b,random(0.5,10),(int)random(0,360));
      }
    }
  }
  
  public Cardumen(int pCantidad, int pos, int col)
  {
    cantidad= pCantidad;
    peces= new Pez[cantidad];
    
    for(int i=0;i<cantidad;i++)
    {
      float num = random(0.5,10);
      int n = (int)num;
      
      if(num>5 && n%2==0)
      {
        if(pos==1)
        {
           peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),col,(int)random(0,255),(int)random(0,255),num,(int)random(0,360),1);
        }
        else if(pos==2)
        {
          peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),col,(int)random(0,255),num,(int)random(0,360),1);
        }
        else
        {
          peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),(int)random(0,255),col,num,(int)random(0,360),1);
        }

      }
      else
      {
        if(pos==1)
        {
           peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),col,(int)random(0,255),(int)random(0,255),num,(int)random(0,360));
        }
        else if(pos==2)
        {
          peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),col,(int)random(0,255),num,(int)random(0,360));
        }
        else
        {
          peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),(int)random(0,255),col,num,(int)random(0,360));
        }
      }
    }
  }
  
  public Cardumen(int pCantidad, int angulo)
  {
    cantidad= pCantidad;
    peces= new Pez[cantidad];
    
    for(int i=0;i<cantidad;i++)
    {
       peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),(int)random(0,255),(int)random(0,255),(int)random(0,255),random(0.5,10),angulo);
    }
  }
  
  public Cardumen(int pCantidad, int angulo, int r, int g, int b)
  {
    cantidad= pCantidad;
    peces= new Pez[cantidad];
    
    for(int i=0;i<cantidad;i++)
    {
       peces[i]=new Pez(random(0,width),random(0,width),(int)random(2,300),r,g,b,random(0.5,10),angulo);
    }
  }
  
  void nadar()
  {
    for(int i=0;i<cantidad;i++)
    {
      peces[i].nadar();
    }
  }
  
  void dibujar()
  {
    for(int i=0;i<cantidad;i++)
    {
      peces[i].dibujar();
    }
  }
}

class Pez{
  
  float x, y;
  float angulo;
  int r,g,b;
  int largo, ancho;
  float contador=0, direccion=1;
  float velocidad;
  int estilo;
  
  public Pez(float px, float py, int plargo)
  { 
    x= px;
    y= py;
    
    angulo=0;
    velocidad=0.5;
    
    r=255;
    g=0;
    b=0;
    
    largo=plargo;
    ancho=plargo/4;
    
    estilo=0;
  }
  
  
  public Pez(float px, float py, int plargo, int pr, int pg, int pb)
  {
    x= px;
    y= py;    
    
    angulo=0;
    velocidad=0.5;
    
    r= pr;
    g= pg;
    b= pb;
    
    largo=plargo;
    ancho=plargo/4;
    
    estilo=0;
    
  }
  
  public Pez(float px, float py, int plargo, int pr, int pg, int pb, float pvelocidad, int pangulo)
  {
    x= px;
    y= py;    
    
    cambiarAngulo(pangulo);    
    velocidad=pvelocidad;
    
    r= pr;
    g= pg;
    b= pb;
    
    largo=plargo;
    ancho=plargo/4;
    
    estilo=0;
  }
  
  public Pez(float px, float py, int plargo, int pr, int pg, int pb, float pvelocidad, int pangulo, int pestilo)
  {
    x= px;
    y= py;    
    
    cambiarAngulo(pangulo);
    velocidad=pvelocidad;
    
    r= pr;
    g= pg;
    b= pb;
    
    largo=plargo;
    ancho=plargo/4;
    
    estilo=pestilo;
  }
  
  void nadar()
  {
    //cambiar y
    if(y<=0-3*largo/4)
    {
      y= height+largo/2;
    }
    else if(y>=height+5*largo/8)
    {
      y=0-3*largo/8;
    }
    else
    {
       y=y-velocidad*cos(angulo);
    }
   
    //cambiar x
    if(x<=0-5*largo/8)
    {
      x= width+4*largo/8;
    }
    else if(x>=width+3*largo/4)
    {
      x=0-largo/2;
    }
    else
    {
       x=x+velocidad*sin(angulo);
    }
    
    
    
    //cambiar contador y direccion de cola
    if(direccion==1)
    {
      if(contador>1)
      {
        direccion=-1;
      }
      else
      {
        contador+=velocidad/15;
      }
    }
    if(direccion==-1)
    {
      if(contador<-1)
      {
        direccion=1;
      }
      else
      {
        contador-=velocidad/15;
      }
    }
    
    //cambiar direccion
    if(estilo==1)
    {
      cambiarAngulo((angulo*180/PI)+(2));
    }
    
  }
  
  void dibujar()
  {
    fill(r,g,b);
    noStroke();
    
    pushMatrix();
    translate(x,y);
    rotateZ(angulo);
    
    ellipse(0,0,ancho+ancho/2,largo/8);
    ellipse(0,0,ancho, 3*largo/4);
    
    fill(255); 
    ellipse(0-ancho/2,0-2*largo/8,largo/8,largo/8);
    ellipse(0+ancho/2,0-2*largo/8,largo/8,largo/8);
    
    fill(0);
    ellipse(0-ancho/2,0-2*largo/8,largo/14,largo/14);
    ellipse(0+ancho/2,0-2*largo/8,largo/14,largo/14);
    
    pushMatrix();
    translate(0,(0+3*largo/8)-largo/30);
    rotateZ(contador);
    fill(r,g,b);
    triangle(0,0,0-ancho/4,(0+largo/4)-largo/30,0+ancho/4,(0+largo/4)-largo/30); 
    popMatrix();
    popMatrix();
    
  }
  
  void cambiarAngulo(float pangulo)
  {
    angulo=pangulo*PI/180;
  }
}