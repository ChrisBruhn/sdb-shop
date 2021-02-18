class Vare {

  // attributter
  int id;
  String navn;
  float pris;

// konstruktør
  Vare(int i, String n, float p) {

    id = i;
    navn= n;
    pris = p;
  }


  //metoder

  int getId() {
    return id;
  }

  String getNavn() {
    return navn;
  }

  float getPris() {
    return pris;
  }
}
