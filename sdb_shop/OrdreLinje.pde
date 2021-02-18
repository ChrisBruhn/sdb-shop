class OrdreLinje extends Vare {
  // Atributer
  int antal;
  
  // Konstruktør
  OrdreLinje(int i, String n, float p, int a){
    super(i, n, p);
    antal = a;
  }
  
  // Metoder
  float getTotal(){
    float total = 0;
    total = antal * pris;
    return total;
  }
  
  int getAntal(){
    return antal;
  }
}
