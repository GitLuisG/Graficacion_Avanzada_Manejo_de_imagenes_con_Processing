PImage image;//Almacenara la imagen PNG
float x;
float y;

void setup(){
  size(300,300);
  x=0;
  y=0;
  image = loadImage("einstein_mask.png");//Carga el archivo png al objeto 'Image'
}

void draw(){
  background(0,255,0);//color de fondo Verde
  image.resize(90,0);//Escala la imagen a una de 90 pixeles de ancho y 90 de alto
  image(image,x,y);//ubica la imagen png en la esquina superior izquierda de pantalla
}

void mouseDragged(){
  x = mouseX;
  y = mouseY;
}
