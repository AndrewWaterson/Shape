void setup() {
  size (500, 500);
  frameRate(1);
}

void draw() {
  noSmooth();
  background(0); // set bg to black
  
  noFill();
  stroke(255);

  int size = 50; //the radius of the circle which the shape is moulded around

  int sides;
  sides =int(random(10, 60));  //give shape random sides

  PVector[] Vertices;
  Vertices = new PVector[sides]; //create array of vertices for each side (the last vertice is the first in the shape so array length is one less than the n of sides)

  translate(width/2, height/2); //translate grid to center of screen

  //fill vertices array with coordinates
  for (int i=0; i<sides; i++) { 
    float x = random(-5,5) + (size*cos((TWO_PI/sides)*(i+1)));
    float y = random(-5,5) + (size*sin((TWO_PI/sides)*(i+1)));
    Vertices[i] = new PVector(x, y);
  }

  beginShape();
  for (int i=0; i<sides; i++) {
    vertex(Vertices[i].x,Vertices[i].y);
  }
  vertex(Vertices[0].x,Vertices[0].y);
  endShape();
}

