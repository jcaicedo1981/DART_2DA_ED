void main (){

  ///Stream
  ///
  final Streamuno = Stream.fromIterable([19,9,8,7,6,5,4,3,2,1,0]);

}

Future<int> sumaStream(Stream<int> stream) async{
var sum=0;
await for(int value in stream){

  print("valor: $value");
  await Future.delayed(Duration(milliseconds: 100));
  sum += value;
}

return sum;

}