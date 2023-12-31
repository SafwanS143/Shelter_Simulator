// A general shelter class that is the parent class to all other buildings

class Shelter {
  // Fields
  String material;
  int foundationStrength;
  float overallStrength;
  color colour;
  PVector pos;
  float c, s;

  Shelter(String m, int fs) {
    this.material = m;
    this.foundationStrength = fs;
          
    this.colour = color(188, 74, 60);
  }
  
  //Methods
  void updateShelter(String m, int fs) {
    this.material = m;
    this.foundationStrength = fs;
    
    //Determines strength of materials depending on natural disaster
    if(material.equals("Metal")) {
      this.colour = color(197);
      s = 70;
    }
      
    else if (material.equals("Concrete")) {
      this.colour = color(105);
      if (naturalDisasterChosen == 3 || naturalDisasterChosen == 2)
        s = 70;
      else
        s = 60;
    }
    
    else if (material.equals("Brick")) {
      this.colour = color(188, 74, 60);
      s = 60;
    }      
    
    else { //Wood
      this.colour = color(191, 110, 48);
      if (naturalDisasterChosen == 1)
        s = 70;
      else
        s = 20;
    }
      
    this.overallStrength = s + this.foundationStrength * c;
  }
}
