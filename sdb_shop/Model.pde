class Model{
  
  
  // Model attributter
  
  ArrayList<Vare> vA = new ArrayList<Vare>();


  //Vare[] VareListe = new Vare[];

  //String[] vareHistory;
  
  //Vare[] VareListe;

  // Model konstruktør
  
  // Model funktioner
  ArrayList<Vare>  laesListe(){
  //  Vare[] vA;
    String[] vareLinje = loadStrings("vareListe.txt");
    for (int i = 0 ; i < vareLinje.length; i++) {
      String[] vS = split(vareLinje[i], ", ");
      Vare v = new Vare(int(vS[0]), vS[1], float(vS[2]));
      vA.add(v);
      
      //vA = append(vA, v);
    }
    
    return vA;
    
    // læs filen
    // split - for hver vare opret et objekt at typen vare. 
    // læg denne vare ind i et array af type vare
    // returner array med alle varer i 
    
  }
  
  void gemListe(ArrayList<Vare> vA){
    // var def.
    String[] gem = new String[100];
    String[] vareP = new String[3];
    Vare v;
    
    // kode
    for(int i = 0; i < vA.size(); i++){
      
      // Hver gang du løber gennem løkken opretter du et nyt array! variable definitioner hører til øvert i koden
      //String[] vareP = new String[3];
      v= vA.get(i);
      vareP[0]=str(v.getId());
      vareP[1]=v.getNavn();
      vareP[2]=str(v.getPris());
      /*
      vareP[0] = str(vA[i].getId());
      vareP[1] = vA[i].getNavn();
      vareP[2] = str(vA[i].getPris());
      */
      
      String vare = join(vareP, ", ");
      gem[i] = vare;
      //vareHistory = append(vareHistory, vare);
    }
    saveStrings("vareListe.txt", gem);
  }
  
}
