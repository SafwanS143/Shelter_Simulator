/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:515186:
  appc.background(230);
} //_CODE_:window1:515186:

public void Materials(GDropList source, GEvent event) { //_CODE_:Material:261635:
  if (!play && !reset)
    updateBuilding(Material.getSelectedText(),FoundationStrength.getValueI());
} //_CODE_:Material:261635:

public void foundationStrengthSlider(GSlider source, GEvent event) { //_CODE_:FoundationStrength:542419:
  if (!play && !reset)
    updateBuilding(Material.getSelectedText(),FoundationStrength.getValueI());
} //_CODE_:FoundationStrength:542419:

public void shelterTypeDroplist(GDropList source, GEvent event) { //_CODE_:shelterType:963827:
  if (!play && !reset) {
    if(shelterType.getSelectedText().equals("Tent")) 
      shelterChosen = 0;
  
  
    else if(shelterType.getSelectedText().equals("House")) 
      shelterChosen = 1;
  
  
    else if(shelterType.getSelectedText().equals("3 - Story")) 
      shelterChosen = 2;
  
  
    else if(shelterType.getSelectedText().equals("Skyscraper"))
      shelterChosen = 3;
      
    else
      shelterChosen = 4;
    
    updateBuilding(Material.getSelectedText(),FoundationStrength.getValueI());
  }
  
} //_CODE_:shelterType:963827:

public void precipitationSlider(GSlider source, GEvent event) { //_CODE_:precipitation:561444:
  if (!play && !reset)
    precipitationValue = precipitation.getValueF();
} //_CODE_:precipitation:561444:

public void temperatureSlider(GSlider source, GEvent event) { //_CODE_:temperature:717298:
  if (!play && !reset)
    temp = temperature.getValueI();
} //_CODE_:temperature:717298:

public void disasterDroplist(GDropList source, GEvent event) { //_CODE_:naturalDisaster:432509:
  if (!play && !reset) {
    if (naturalDisaster.getSelectedText().equals("None")) {
      disasterSelected = false;
      naturalDisasterChosen = 0;
    }
      
    else {
      disasterSelected = true;
      
      if (naturalDisaster.getSelectedText().equals("Earthquake")) 
        naturalDisasterChosen = 1;
          
      else if (naturalDisaster.getSelectedText().equals("Tsunami")) 
        naturalDisasterChosen = 2;
          
      else if (naturalDisaster.getSelectedText().equals("Tornado"))
        naturalDisasterChosen = 3;
    }
  }
} //_CODE_:naturalDisaster:432509:

public void disasterSeveritySlider(GSlider source, GEvent event) { //_CODE_:disasterSeverity:262648:
  if (!play && !reset)
    disasterStrength = 50 + (disasterSeverity.getValueI()*0.1*100);

} //_CODE_:disasterSeverity:262648:

public void PlayButton(GButton source, GEvent event) { //_CODE_:Play:279607:
  if (reset) {
    reset();  
    Play.setText("Play");
  }
  else if (!play) {
    play = true;
    Play.setText("Reset");
  }
} //_CODE_:Play:279607:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 400, 450, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  Material = new GDropList(window1, 134, 98, 90, 120, 5, 10);
  Material.setItems(loadStrings("list_261635"), 2);
  Material.addEventHandler(this, "Materials");
  FoundationStrength = new GSlider(window1, 244, 88, 149, 40, 10.0);
  FoundationStrength.setShowValue(true);
  FoundationStrength.setShowLimits(true);
  FoundationStrength.setLimits(50, 0, 100);
  FoundationStrength.setNumberFormat(G4P.INTEGER, 0);
  FoundationStrength.setOpaque(false);
  FoundationStrength.addEventHandler(this, "foundationStrengthSlider");
  shelterType = new GDropList(window1, 12, 97, 90, 120, 5, 10);
  shelterType.setItems(loadStrings("list_963827"), 1);
  shelterType.addEventHandler(this, "shelterTypeDroplist");
  label1 = new GLabel(window1, 125, 6, 133, 26);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Shelter Variables");
  label1.setOpaque(true);
  label2 = new GLabel(window1, 140, 52, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Material");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 14, 51, 83, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Shelter Type");
  label3.setOpaque(false);
  label4 = new GLabel(window1, 261, 50, 123, 21);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Foundation Strength");
  label4.setOpaque(false);
  label5 = new GLabel(window1, 117, 175, 146, 31);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Environment Variables");
  label5.setOpaque(true);
  label6 = new GLabel(window1, 52, 219, 80, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("Precipitation");
  label6.setOpaque(false);
  label7 = new GLabel(window1, 235, 217, 111, 24);
  label7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label7.setText("Temperature °C");
  label7.setOpaque(false);
  precipitation = new GSlider(window1, 29, 248, 129, 39, 10.0);
  precipitation.setShowValue(true);
  precipitation.setShowLimits(true);
  precipitation.setLimits(0.0, 0.0, 50.0);
  precipitation.setNumberFormat(G4P.DECIMAL, 2);
  precipitation.setOpaque(false);
  precipitation.addEventHandler(this, "precipitationSlider");
  temperature = new GSlider(window1, 222, 248, 139, 38, 10.0);
  temperature.setShowValue(true);
  temperature.setShowLimits(true);
  temperature.setLimits(20, -10, 30);
  temperature.setNumberFormat(G4P.INTEGER, 0);
  temperature.setOpaque(false);
  temperature.addEventHandler(this, "temperatureSlider");
  naturalDisaster = new GDropList(window1, 46, 339, 90, 100, 4, 10);
  naturalDisaster.setItems(loadStrings("list_432509"), 0);
  naturalDisaster.addEventHandler(this, "disasterDroplist");
  label8 = new GLabel(window1, 29, 303, 124, 26);
  label8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label8.setText("Natural Disaster");
  label8.setOpaque(false);
  disasterSeverity = new GSlider(window1, 221, 329, 140, 40, 10.0);
  disasterSeverity.setShowValue(true);
  disasterSeverity.setShowLimits(true);
  disasterSeverity.setLimits(1, 1, 5);
  disasterSeverity.setNbrTicks(5);
  disasterSeverity.setNumberFormat(G4P.INTEGER, 0);
  disasterSeverity.setOpaque(false);
  disasterSeverity.addEventHandler(this, "disasterSeveritySlider");
  label9 = new GLabel(window1, 236, 305, 110, 20);
  label9.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label9.setText("Disaster Severity");
  label9.setOpaque(false);
  Play = new GButton(window1, 144, 398, 80, 30);
  Play.setText("Play");
  Play.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Play.addEventHandler(this, "PlayButton");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GDropList Material; 
GSlider FoundationStrength; 
GDropList shelterType; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GLabel label5; 
GLabel label6; 
GLabel label7; 
GSlider precipitation; 
GSlider temperature; 
GDropList naturalDisaster; 
GLabel label8; 
GSlider disasterSeverity; 
GLabel label9; 
GButton Play; 
