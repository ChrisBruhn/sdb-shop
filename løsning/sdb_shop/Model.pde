class Model { //<>//
  // Model attributter
  public ArrayList<Vare> vA = new ArrayList<Vare>();

  // Model konstruktør
  Model() {
    laesListe();
  }

  // Model metoder  
  // læser varer fra fil
  void laesListe() {
    String[] vareLinje = loadStrings("vareListe.txt");
    for (int i = 0; i < vareLinje.length; i++) {
      String[] vS = split(vareLinje[i], ",");
      Vare v = new Vare(int(vS[0]), vS[1], float(vS[2]));
      vA.add(v);
    }
  }
  
  
    // læser en ordre fra fil
  ArrayList<OrdreLinje> laesOrdre() {
    ArrayList<OrdreLinje> oL = new ArrayList<OrdreLinje>();

    String[] oS = loadStrings("ordre.txt"); //<>//
    int i=0;
    //for (int i = 0; i < oS.length-1; i++) {

      while(oS[i].equals("null") == false){
      println(oS[i]);
      
      String[] vS = split(oS[i], ",");
      
            
      OrdreLinje o = new OrdreLinje(int(vS[0]), vS[1], float(vS[2]),int(vS[0]));
      oL.add(o);
      i++;
      }
    
    return oL;
  }

  void gemListe(ArrayList<OrdreLinje> oL) {
    // var def.
    String[] gem = new String[100];
    String filLinje;
    OrdreLinje o;

    // løb igennem listen og lav en string af hver ordrelinje
    for (int i = 0; i < oL.size(); i++) {
      o = oL.get(i);
      if (o !=null) {
        filLinje = str(o.getId());
        filLinje = filLinje +","+ o.getNavn();
        filLinje = filLinje +","+ o.getPris();
        filLinje = filLinje +","+ o.getAntal();
        gem[i]= filLinje;
      }
    }
    saveStrings("ordre.txt", gem);
  }

  int getSize() {
    return vA.size();
  }

  // returnerer et navn efter id
  String findNavn(int id) {
    Vare vareTing;
    String navn="";
    for (int i = 0; i < model.getSize(); i++) {
      vareTing = model.vA.get(i);
      if (vareTing.getId()==id) {
        navn = vareTing.getNavn();
      }
    }
    return navn;
  }

  // returnere en pris fra et id
  float findPris(int id) {
    Vare vareTing;
    float pris = 0.0;
    for (int i = 0; i < model.getSize(); i++) {
      vareTing = model.vA.get(i);
      if (vareTing.getId()==id) {
        pris = vareTing.getPris();
      }
    }
    return pris;
  }
}
