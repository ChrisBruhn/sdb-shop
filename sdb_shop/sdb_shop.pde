
// importere controlP5 library 
import controlP5.*;

ControlP5 cp5;

View view;

ArrayList<Vare> varer = new ArrayList<Vare>();


void setup() {
  size(768, 512);

  cp5 = new ControlP5(this);

  view = new View();
}

void draw() {
}


float varePrisTotal(int id, int antal) {
  float midler = 0; //midlertidig varible til beregning af variable
  for (int i = 0; i < varer.size(); i++) {
    Vare vareTing = varer.get(i);

    if (vareTing.getId()==id) {
      midler = vareTing.getPris()*antal;
    }
  }
  return midler;
}

float totalPris;

float totalPrisMoms;
