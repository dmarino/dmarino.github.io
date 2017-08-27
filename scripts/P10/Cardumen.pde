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