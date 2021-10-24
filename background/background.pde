PImage forest;
PImage forest2;
float x1, y1, x2, y2;
float speedX1, speedX2;
int timer;
int interval = 2500;

void setup() {
  size(800, 600, P2D);
  forest = loadImage("forest2.png");
  forest2 = loadImage("forest2.png");
  forest.resize(forest.width * (height / forest.height), height);
  forest2.resize(forest2.width * (height / forest2.height), height);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = x1 - forest.width;
  
  speedX1 = 5;
  timer = millis();
  stroke(255,15,35);
  strokeWeight(5);
  fill(255,15,34);
}

void draw() {
  background(129,129,129);
    
 
  
  noTint();
  image(forest, x1, y1); 
  image(forest2, x2, y1);
  x1 += speedX1;
  x2 += speedX1;
    
  if (x1 > width+forest.width){
    x1 = 0;
    //y1 = height/2;
    //forest.resize(forest.width * (height / forest.height), height);
    image(forest,x1,y1);
  }
  if ( x2 > width + forest.width){
    x2 = 0;
    //y1 = height/2;
    //forest.resize(forest.width * (height / forest.height), height);
    image(forest2,x2,y2);
  }
  int time1 = millis() - timer;
  if(time1 > interval){
  
    
    ellipse(x1-50,y1/4,25,25);
    timer = millis();
  }
}
