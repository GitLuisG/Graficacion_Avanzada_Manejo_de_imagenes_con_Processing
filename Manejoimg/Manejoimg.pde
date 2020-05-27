import gab.opencv.*;
import processing.video.*;
import java.awt.*;

final static int w=300;
final static int h=300;

PImage image;//Almacenara la imagen PNG
float x;
float y;

Capture video;
OpenCV opencv;

void setup(){
  size(300,300);
  video = new Capture(this);
  x=0;
  y=0;
  image = loadImage("einstein_mask.png");//Carga el archivo png al objeto 'Image'
  video.start();
}

void draw(){
  image(video, 0, 0 );
  //background(0,255,0);//color de fondo Verde
  image.resize(90,0);//Escala la imagen a una de 90 pixeles de ancho y 90 de alto
  image(image,x,y);//ubica la imagen png en la esquina superior izquierda de pantalla
}

void mouseDragged(){
  x = mouseX;
  y = mouseY;
}
