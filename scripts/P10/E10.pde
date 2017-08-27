Pez pato;
Cardumen peces;
void setup()
{
  size(900,600,P3D);
  pato= new Pez(300,300,300, 255, (int)random(0,138), (int)random(0,255),2,270);
  
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
 
  //pato.dibujar();
  //pato.nadar();
  
  peces.nadar();
  peces.dibujar();
}