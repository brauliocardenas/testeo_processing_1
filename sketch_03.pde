color fondo = color(241, 242, 235);
color cian = color(250, 0, 0, 50);
int [] lineas = {55, 145, 185};
String [] textos = {"a Pelican Original   4/6", "On Justice in Society", "Morris Ginsberg"};
PFont normal, light;
float a = 1;

void setup() 
{
  size(400, 650);
  background(fondo);
  normal = loadFont("GrotesqueMT-Bold-48.vlw");
  light = loadFont("GrotesqueMT-Light-48.vlw");
}

void draw() {
  fill(fondo);
  noStroke();
  rect(0, 0, width, lineas[2]);
  stroke(cian);
  fill(cian);
  for (int x = 0; x < lineas.length; x++) {
    line(0, lineas[x], width, lineas[x]);
  }
  textFont(light);
  textSize(20);
  text(textos[0], 170, 20, 220, 30);
  textFont(normal);
  textSize(40);
  textLeading(38);
  text(textos[1], 170, 65, 220, 100);
  textSize(20);
  text(textos[2], 170, 160, 220, 30);

  //desde aquí el dibujo
  
  fill(random(0,360),100,100);
  if (mouseY == pmouseY || mouseX == pmouseX ) {
    ellipse(mouseX, mouseY, a, a);
    
    
  } else {
    
    ellipse(mouseX, mouseY, a, a);
    a = random(0,100);
  }
  
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("propuesta-#####.png");
  }
}
