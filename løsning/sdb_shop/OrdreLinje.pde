class OrdreLinje extends Vare {

  // attributter
  int antal;

  // konstuktør
  OrdreLinje(int id, String navn, float pris, int a) {
    super(id, navn, pris);
    antal = a;
  }

  // metoder

  float getTotal() {
    return antal*pris;
  }

  int getAntal() {
    return antal;
  }
}
