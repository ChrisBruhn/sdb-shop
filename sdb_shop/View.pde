
class View {

  Textfield productID;
  Textfield amount;
  Textlabel reciept;
  
  Button confirmButton;
  Button finishSale;
  Button saveButton;
  Button loadButton;
  
  // Variabler til produkt id og mængde
  int id;
  int a;
  
  IntList AllSales = new IntList();
  
  PFont font;
  
  
  View() {
    
    font = createFont("Arial", 14);
    
    productID = cp5.addTextfield("productID");
    productID.setPosition(200, 20)
      .setSize(250, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Produkt ID");
      
    amount = cp5.addTextfield("amount");
    amount.setPosition(460, 20)
      .setSize(150, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Mængde");
      
    reciept = cp5.addTextlabel("reciept");
    reciept.setPosition(10, 10)
      .setSize(150, height-20)
      .setFont(font)
      .setColor(color(255))
      .setLabel("This is text \n is this new line?");
      
    confirmButton = cp5.addButton("confirm");
    confirmButton.setPosition(width-120, 20)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Add to kart");
      
    saveButton = cp5.addButton("save_file");
    saveButton.setPosition(width-120, height-110)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Save");
    
    loadButton = cp5.addButton("load_file");
    loadButton.setPosition(width-120, height-60)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Load");
    
  }
  
  // Retuner produkt ID
  int getID() {
    if (Float.isNaN(float(cp5.get(Textfield.class, "productID").getText()))) {
      println("Nigga that aint a NUMBER");
      return -1;
    }
    
    this.id = int(cp5.get(Textfield.class, "productID").getText());
    return this.id; 
    
  }
  
  // Retuner mængde af samme vare
  int getAmount() {
    if (Float.isNaN(float(cp5.get(Textfield.class, "amount").getText()))) {
      println("Nigga that aint a NUMBER");
      return -1;
    }
    
    this.a = int(cp5.get(Textfield.class, "amount").getText());
    return this.a;
    
  }
  
  // Funktion der retunere alle salg
  IntList getAllSales() {
    
    return AllSales;
  
  }
  
  // Funktion der kun bliver brugt til at appende et nyt salg ind
  void addToSales(int[] sale) {
    AllSales.append(sale);
  }
  
  
  // Tegner kviteringen
  void drawReciept() {
    
    
  }
  
  // Tegner alt den permanente text
  void drawText() {
    text("", 0, 0);
  }
  
  
  
  
  

}  

// Funktion til confirm kanppen
void confirm() {
  
  if (view.getID() == -1 || view.getAmount() == -1) {
    println();
  } else {
    
    int[] sale = new int[2];
    sale[0] = view.getID();
    sale[1] = view.getAmount();
    
    view.addToSales(sale);
  
    println("ID - ", view.getID());
    println("Amount - ", view.getAmount());
        
    println("Product has been added to kart.");
  }
  
  
}

void save_file() {
  println("Fil er blevet gemt");

}

void load_file() {
  println("Fil er blevet loaded");
}
