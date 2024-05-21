import 'package:conexion_api/conexion_api.dart' as conexion_api;
import 'package:conexion_api/services/people_services.dart';

void main(List<String> arguments) {
  print('Hello world: ${conexion_api.calculate()}!');
final peopleServices = PeopleServices();
peopleServices.getHttp();
}
