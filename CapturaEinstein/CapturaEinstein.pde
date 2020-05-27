import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Rectangle[] caras;

static PImage image;

//Las dimenciones de Captura deben de tener una dimencion dividida entre 2 para ser aceptada
final static int w=640;
final static int h=480;

final Capture video = new Capture(this, w, h);
final OpenCV opencv = new OpenCV(this, w, h);


void setup() {
  size(640,480);
  image = loadImage("einstein_mask.png");
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  video.start();
  //se ajusta la dimencion de la camara para ser adaptada
  scale(1);
}

void draw() {
  opencv.loadImage(video);
  image(video, 0, 0);
  caras = opencv.detect();
  video.read();
  for (int i = 0; i < caras.length; i++) {
    //se coloca la imagen en la pocicion de la cara y se adapta a la dimencion del Rostro
    image(image, caras[i].x, caras[i].y, caras[i].width, caras[i].height);
  }
}
