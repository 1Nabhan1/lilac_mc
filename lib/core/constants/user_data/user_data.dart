import 'package:get_storage/get_storage.dart';
final box = GetStorage();
class UserData {
  final token = box.read('token');

}