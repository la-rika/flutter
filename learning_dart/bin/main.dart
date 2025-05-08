
import "dart:io"; // package per lavorare con gli input dallo user e gli output


enum Status {
  OPEN, // 0
  CLOSED // 1
}

class Customer {
  String  name = "Ciccio";
  int age = 90;
  String? city ;

// permette di costruire l'oggetto direttamente quando viene inizializzto
  Customer(String name, int age,{String? city}){
    this.name = name;
    this.age = age;
    this.city = city;
  }
}


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

  // COLLECTIONS
  // fixed list :  array con lunghezza fissa
  // growable list : array a cui si possono aggiungere o togliere elementi
  // sono growable a meno che non venga specificato il contrario
  List<int> numberList = [2,56,22,77];
  var fruitList = ["apple","orange"];
  var fruitList2 = ["MELON", for(var fruit in fruitList) fruit.toUpperCase(), "MANGO"]; // mette gli elementi di fruitList in uppercase
  var isShoppingDone = true;
  var shoppingCart = ["apple", if(isShoppingDone) "grape"]; // aggiunge elementi in base a delle condizioni

  // sets : lista non ordinata di elementi univoci
  // non si puo' accedere agli elementi con l'index
  // se si prova ad aggiungere un doppione viene ignorato e non viene aggiunto
  var colorSet = {"pink", "blue"};
  var stringSet = <String>{}; // senza la tipizzazione viene creato un map e non un set
  Set newSet = {};

  // maps : tipo gli oggetti in js
  // si accede ai values tramite le keys
  var newMap = {
    "key": "value"
  };

  Map<String,int> typeMap= {
    "String": 2
  };
  typeMap["String"] = 5; // modificare i valori nel map

  Map<String,dynamic> dynamicMap = { // il value puo' essere di qualsiasi type
    "String": 2,
    "string2": "ciao"
  };

  // INPUT & OUTPUT
  var name = stdin.readLineSync(); // appena disponibile prende cio' che e' stato scritto nel input
  stdout.write("hello $name \n"); // stampa ciao + [nome scritto nell'input], \n per andare a capo

  var statusInput = int.parse(stdin.readLineSync()!); // ! : assicuriamo il codice che questo dato non sara' null e lo trasformiamo in un numero
  // negli enum ogni elemento ha un index partendo da 0, quindi per avere status === Status.OPEN , nell'input dovremmo scrivere 0
  var enumValue = Status.values[statusInput]; // prendiamo il valore dell'enum che corrisponde a cio' che abbiamo scritto nell'input
  switch(enumValue){
    case Status.OPEN:{
      print("WELCOMEEEE");
      break;
    }
    case Status.CLOSED:{
      print("Sorry we're closed");
      break;
    }
  }

  // fare qualcosa solo se un valore non e' null
  String? nullString ; // puo' essere null perche' ha il ?
  for (String? color in colorSet){ // String? : se l'elemento non e' null fai il print senno' non fare niente e basta
    print(color?.toUpperCase());
    print(color ?? "idk"); // equivalente di color ? color : "idk"
  }

  // LATE
  late double pi; // late permette di creare variabili not null anche senza dargli subito un valore, l'importante e' che venga valorizzata prima di essere utilizzata
  pi = 3.14;

  // LAZY 
  String getVar(){
    return "ciao";
  }
  late String lazyVar = getVar(); // questa sintassi indica una variabile lazy
  // con lazy la variabile viene inizializzata solo se viene effettivamente usata (se non viene usata getVar non partira' mai risparmiando risorse)

  // parameters
  void exampleFunction(param1, {required String param2, String? param3}){ // name parameters sono opzionali a meno che non ci sia il required
    print(param1.toLowerCase());
    print(param2.toLowerCase());
    print(param3?.toLowerCase());
  }
  void exampleFunction2(param1, [String param2 = "ciao", String param3 = "come stai"]){ // con le [] sono position parameters ma opzionali e con un valore di default in caso non vengano passati 
    print(param1.toLowerCase());
    print(param2.toLowerCase());
    print(param3?.toLowerCase());
  }

// CLASSES & OBJECTS
  Customer susan = Customer(); // classe definitva sopra il main
  susan.name = "papaya";

  Customer jimmy =  new Customer("jimmy",22,city:"milan"); // i name parameters si passano con nome: parameter
}
