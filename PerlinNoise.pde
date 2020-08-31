float inc = 0.005;
float dx;
float dy;
float z;
float zinc = 0.002;

void setup(){
 size(800,600);
 dx = width * inc;
 dy = height * inc;
}

void draw(){
  loadPixels();
  for (int x = 0; x < width; x++)
    for (int y = 0; y < height; y++){
      pixels[x+y*width] = color(map(noise(x*inc,y*inc, z),0,1,0,255));
    }
  updatePixels();
  z+=zinc;
}