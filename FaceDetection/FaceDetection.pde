import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;
OpenCV opencv;
Rectangle[] caras;
PImage imagen;
void setup(){
 opencv = new OpenCV(this,"greenteam.jpg");
 fullScreen();//size(600,320); // Verifique primero el tamaño de su JPG si es diferente ajuste.
 opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); // filtro para cara frontal
 caras = opencv.detect(); // Aquí se detectan las caras de la foto.
 imagen = loadImage("einstein_mask.png");
}
void draw(){
 image(opencv.getInput(), 0, 0);
 noFill();
 stroke(0,255,0);
 strokeWeight(3);
 for( int i=0; i < caras.length ; i++){
 if (i<10){
 imagen = loadImage("einstein_mask.png"); // evitamos una imagen borrosa
 imagen.resize(caras[i].width+25, caras[i].height+25);
 image(imagen, caras[i].x-12, caras[i].y-20);
 }
 // los enteros que se suman solo son para centrar un poco mejor las caras.
 //Solo hay 10 caras válidas, las otras no se dibujan.
 }
}
