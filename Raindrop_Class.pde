class Raindrop {
  // Length, position and colour of raindrop
  PVector pos;
  float l;     
  color colour;
  
  Raindrop(color c) {
    int xStart, xEnd;
    if(temp > 0) {
      xStart = 100;
      xEnd = 1000;
    }
    else {
      xStart = 0;
      xEnd = 600;
    }
    this.pos = new PVector(random(xStart, xEnd), -300);
    this.l = random(3, 5);
    this.colour = c;
  }
  
  void drawRaindrop() {
    noStroke();
    fill(this.colour);
    
    // Draws oval after rotating the screen by 30 degrees
    if(temp > 0) {
      rotate(radians(30));
      ellipse(this.pos.x, this.pos.y, this.l, this.l + 7); // Rain
      resetMatrix();
    }
    
    else 
      circle(this.pos.x, this.pos.y, this.l); // Snow
      
    stroke(0);
  }
  
  // Changes colour for when temperature is above/below 0
  void raindropColourUpdate(int r, int g, int b) {
    this.colour = color(r, g, b);
  }
}
