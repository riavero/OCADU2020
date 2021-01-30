//ASSIGNMENT 1 - EMOTION - ANXIOUS/BREATHING SIMULATION

//Key variables (setting values and parameters)

//Breathing simulation
float time = 0.01; // time between intervals
float increment = 0.01; // speed of oscillations SLOW 0.01-0.5 FAST

//Fading effect for cursor 
int[] xpos = new int[50]; //array 1 ***int[x] = # of elements 
int[] ypos = new int[50]; //array 2 
int[] zpos = new int[50]; // array 3


void setup() { //repeats once
  //fullScreen(); //canvas size
  size(800,800);
  background (255); // white background

//Fading effect for cursor = start at 0
  for (int i = 0; i < xpos.length; i ++ ) {
    xpos[i] = 0; 
    ypos[i] = 0;
  }  
  
}

void draw() { //repeats continuously
  background(255); // white background
  float n = noise(time) * width; // noise value = time 
  time += increment; // incremental time for each cycle
  noStroke(); // no stroke line around ellipses
  
 //Fading/array effect shift intervals =xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. 
  for (int i = 0; i < xpos.length-1; i ++ ) {
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

 //Fading/array to follow cursor
  xpos[xpos.length-1] = mouseX; 
  ypos[ypos.length-1] = mouseY;

  // Element (shape) that will repeat in each array 
  for (int i = 0; i < xpos.length; i ++ ) { 
    noStroke();
    fill(20,70,100,100-i*5);// Color and size are tied to the loop's counter: i.
    ellipse(xpos[i], ypos[i], i, i);
  }

  
  //Circle 1
  fill(24,47,240,100); // dark blue
  ellipse(width/2, height/2, n, n); 
  
  //Circle 2
  fill(24,240,238,60); //turqoise
  ellipse(width/4, height/4, n, n);
  
  //Circle 3
  fill(69,234,45,78); // bright green
  ellipse(width/8, height/8, n, n); 
  
  //Circle 4
  fill(240,143,24,80); // orange
  ellipse(width/10, height/10, n, n); 
  
  //Circle 5
  fill(240,143,24,80); // orange
  ellipse(width/10, height/10, n, n); 
  
  translate(mouseX,mouseY); // all items below will move with cursor
  
  //Circle 6
  fill(234,225,45,70); // yellow
  ellipse(300,500,n,n);
  rotate(radians(mouseX)); // all items below will rotate about x-axis as cursor moves
  
  //Circle 7
  fill(13,80,24,89); // dark green
  ellipse(150,50,n,n);

  //Circle 8
  fill(234,45,45,80); // red
  ellipse(600,380,n,n);

  //Circle 9
  fill(60,45,234,90); // bright blue
  ellipse(100,600,n,n);
  
  //Circle 10
  fill(60,45,234,90); // purple
  ellipse(700,300,n,n);
}

void mousePressed(){
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 16,16);
}
  
void keyPressed(){
  background(50);
}
