import 'package:fyp/api_connection/model/user.dart';
import 'package:fyp/credentials/user_prefrence/userpre.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController{
  Rx<User> _currentUser =User(0,'','','').obs;
  User get user =>_currentUser.value;
  String get userName => _currentUser.value.user_name;

  getUserInfo() async{
    User? getUserInfoFromLocalStorage = await RemUSer.readUSerInfo();
    _currentUser.value=getUserInfoFromLocalStorage!;
  }
}