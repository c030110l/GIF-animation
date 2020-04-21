ArrayList<PImage> gif;
int n=0;

void setup() {
  size(600, 600);

  gif=new ArrayList<PImage>();
  int i=0;
  while (i<13) {
    String zero="";
    if (i<10) zero= "0"; 
    gif.add(loadImage("frame_" + zero + i +"_delay-0.15s.gif"));
    i++;
  }
  frameRate(50);
}

void draw() {
  background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>12) n=0;
}
