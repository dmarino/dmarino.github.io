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