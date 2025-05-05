import 'package:flutter/flutter.dart' as flutter;

void main() {
  var chupagna = "chupagna"; // puo' essere assegnato solo type string
  var amount = 4; // puo' essere assegnato solo type int
  dynamic chupa = "zao"; // puo' essere assegnato qualsiasi type
  Object chupa2 = "zao2"; // puo' essere assegnato qualsiasi type (QUESTO MEGLIO DI DYNAMIC)
  // strings are in UTF-16 code
  String multilineString = "ciao"
  "come"
  "stai";

  print("ciao sono la $chupagna"); // solo $ per richiamare variabili
  print("double amount is ${amount * 2}"); // ${} per le espressioni
  print("this costs \$$amount"); // \ serve a intepretare come stringa il carattere dopo ($4)
  print(chupagna.runtimeType); // le variabili sono oggetti e quindi hanno i metodi (ritorna il type di chupagna)

  assert("ciao" == "ciao"); // controlla se le stringhe sono uguali basandosi sul encoding UTF-16, in caso contrario da errore

}
