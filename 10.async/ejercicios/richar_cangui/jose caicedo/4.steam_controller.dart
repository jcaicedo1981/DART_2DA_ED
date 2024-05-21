import 'dart:async';

void main (){

///StreamController
///
final streamController = StreamController<String>();

streamController.stream.listen((event) { 

  print("stREAM: $event");
},
onError:  onError,
onDone: (){
 print("ondone");
},

cancelOnError: false,
);

///agregar datos
streamController.sink.add("Hola munod");

//agregar error

streamController.sink.addError("errorrrrr");

//siempre serar
streamController.close();



}

void onError(evnet){
  print("error: $evnet");
}