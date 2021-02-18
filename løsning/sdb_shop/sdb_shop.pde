 //<>// //<>// //<>// //<>// //<>// //<>//
// importere controlP5 library 
import controlP5.*;

ControlP5 cp5;

View view;
Model model;
ArrayList<OrdreLinje> ordre = new ArrayList<OrdreLinje>();


float totalPris;
float totalPrisMoms;


void setup() {
  size(768, 512);
  cp5 = new ControlP5(this);
  view = new View();
  model = new Model();
}

void draw() {
}


// Funktion til confirm kanppen
void confirm() {

  if (view.getID() == -1 || view.getAmount() == -1) {
    println();
  } else {


    // opret ordrelinje objekt
    String navn = model.findNavn(view.getID());
    float pris = model.findPris(view.getID());
    OrdreLinje ol = new OrdreLinje(view.getID(), navn, pris, view.getAmount());


    //tilføj varelinjen til ordren
    ordre.add(ol);

    // udskriv varelinjer
    printReciept();
  }
}





// beregner et salg
float varePrisTotal(int id, int antal) {
  float midler = 0; //midlertidig varible til beregning af variable
  for (int i = 0; i < model.getSize(); i++) {
    Vare vareTing = model.vA.get(i);
    if (vareTing.getId()==id) {
      midler = vareTing.getPris()*antal;
    }
  }
  return midler;
}

// gemmer en ordre
void save_file() {
  model.gemListe(ordre);
}

//henter en ordre
void load_file() {
  ordre = model.laesOrdre();
  printReciept();
}

void printReciept() {
  OrdreLinje ol;
  float total=0;
  for (int i =0; i<ordre.size(); i++)
  {
    ol = ordre.get(i);
    //void drawReciptLine(int id, String tekst, float pris, int antal, int y){
    int id = ol.getId();
    String n = ol.getNavn();
    float p = ol.getPris();
    int a = ol.getAntal();

    view.drawReciptLine(id, n, p, a, i*20);
    total = total +ol.getTotal();
  }

  // udskriv total
  view.drawReciept(total);
}

void clearForm(){
  cp5.get(Textfield.class, "productID").clear();
  cp5.get(Textfield.class, "amount").clear();
  for (int i = 0; i < ordre.size();i++){
    ordre.remove(i);
  }
  

}
