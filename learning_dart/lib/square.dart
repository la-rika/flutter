import 'dart:math';

class Square {
  // class : struttura di un oggetto

  double side;
  Square(
    this.side,
  ); // instaziamo l'oggetto square con side che sara' cio' che gli passeremo come parametro

  // GET function
  // serve per manipolare le proprieta' dell'oggetto quando la richiediamo
  // quando faremo obj.area ci ritornera' side * side
  double get area => side * side;
  double get perimeter => side / 4;

  // SET function
  // manipola la proprieta' dell'oggetto quando la settiamo obj.prop = ...
  set area(double areaValue) {
    side = sqrt(areaValue); // ritorna la radice quadrata
  }

  set perimeter(double perimeterValue) {
    side = perimeterValue / 4;
  }

  @override // serve quando diamo a una funzione un nome che gia' esiste ma la nostra fa delle cose diverse
  String toString() { // ritorniamo l'oggetto con le proprieta' manipolate 
    return "Side: $side, Area: $area, Perimeter: $perimeter";
  }
}

void main() {
  var sq = Square(7.1);
  print(sq);

  sq.area = 100;
  print(sq);

  sq.perimeter = 60;
  print(sq);
}
