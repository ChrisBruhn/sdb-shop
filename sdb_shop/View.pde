
class View {

  Textfield productID;
  Textfield amount;
  Textlabel reciept;
  
  Button confirmButton;
  Button finishSale;
  Button saveReciept;
  Button loadReciept;
  
  // Variabler til produkt id og mængde
  int id;
  int a;
  
  PFont font;
  
  
  View() {
    
    font = createFont("Arial", 24);
    
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
    confirmButton.setPosition(620, 20)
      .setSize(100, 40)
      .setFont(createFont("arial", 14))
      .setLabel("Add to kart");
    
  }
  
  // Retuner ID are
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
  
  void setReciept() {
  
  }
  
  void drawText() {
    text("", 0, 0);
  }
  
  
  

}  
  
void confirm() {
  
  if (view.getID() == -1 || view.getAmount() == -1) {
    println();
  } else {
  
    println("ID - ", view.getID());
    println("Amount - ", view.getAmount());
        
    println("Product has been added to kart.");
  }
  
  
}
