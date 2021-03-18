
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



  PFont font;


  View() {

    font = createFont("Arial", 14);

    productID = cp5.addTextfield("productID");
    productID.setPosition(200, 20)
      .setSize(250, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Product ID");

    amount = cp5.addTextfield("amount");
    amount.setPosition(460, 20)
      .setSize(150, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("Amount");

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
      
    loadButton = cp5.addButton("clearForm");
    loadButton.setPosition(width-120, height-160)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Clear");
      
  }

  // Retuner produkt ID
  int getID() {
    if (Float.isNaN(float(cp5.get(Textfield.class, "productID").getText()))) {
      println("NO, that aint a NUMBER");
      return -1;
    }
    this.id = int(cp5.get(Textfield.class, "productID").getText());
    return this.id;
  }

  // Retuner mængde af samme vare
  int getAmount() {
    if (Float.isNaN(float(cp5.get(Textfield.class, "amount").getText()))) {
      println("No, that aint a NUMBER");
      return -1;
    }
    this.a = int(cp5.get(Textfield.class, "amount").getText());
    return this.a;
  }

// skriver en ordrelinje
  void drawReciptLine(int id, String tekst, float pris, int antal, int y) {
    int x=200;
    text(id, x, 100+y);
    text(tekst, x+100, 100+y);
    text(antal, x+200, 100+y);
    text(pris, x+300, 100+y);
    text(antal*pris, x+350, 100+y);
  }

  // Udskriver ordre total med moms
  void drawReciept(float total) {
    fill(205);
    rect(width-320, height-150, 180, 90);
    fill(255);
    //textSize(20);
    text("Pris exmoms: "+total, width-300, height-130);
    // jeg lader logikken være her, fordi alternativet er at skulle bruge flere parametere. 
    text("Moms: "+((total*1.25)-total), width-300, height-100);
    text("Total: "+((total*1.25)), width-300, height-70);
  }
}  
