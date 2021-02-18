class Model {
  
  // Model attributter
  
  ArrayList<Vare> vA = new ArrayList<Vare>();

  // Model konstruktør
  
  // læs filen
  // split - for hver vare opret et objekt at typen vare. 
  // læg denne vare ind i et array af type vare
  // returner array med alle varer i 
  
  // Model funktioner
  ArrayList<Vare> laesListe(){
    String[] vareLinje = loadStrings("vareListe.txt");
    for (int i = 0 ; i < vareLinje.length; i++) {
      String[] vS = split(vareLinje[i], ",");
      Vare v = new Vare(int(vS[0]), vS[1], float(vS[2]));
      vA.add(v);
    }
    return vA;
  }
  
  void gemListe(ArrayList<OrdreLinje> oL){
    // var def.
    String[] gem = new String[0];
    String[] oLP = new String[4];
    OrdreLinje o;
    
    // kode
    gem = loadStrings("ukendtFil.txt");
    gem = append(gem, (str(hour()) + ":" + str(minute()) + " - " + str(day()) + "/" + str(month()) + " - " + str(year())));
    
    for(int i = 0; i < oL.size(); i++){
      o = oL.get(i);
      oLP[0] = str(o.getId());
      oLP[1] = o.getNavn();
      oLP[2] = str(o.getPris());
      oLP[3] = str(o.getAntal());
      
      String ordre = join(oLP, ",");
      gem = append(gem, ordre);
    }
    saveStrings("ukendtFil.txt", gem);
  }
  
  Vare findNavnD(int id){
    
  }
  
  Vare findPris(int id){
    
  }
  
}
