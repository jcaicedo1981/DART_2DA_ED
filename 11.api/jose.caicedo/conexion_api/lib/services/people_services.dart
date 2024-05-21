
import 'package:dio/dio.dart';
class PeopleServices{
  ///instanciar dio ---> herramienta
  ///metodo
  ///control error
  ///
  

  

final dio = Dio();

void getHttp() async {
 try {
   
 } 
  final response = await dio.get('https://dart.dev');
  print(response);

  catch (e) {
   
 }
}


}