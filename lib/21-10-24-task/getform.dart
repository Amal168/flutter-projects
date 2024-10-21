import 'package:get/get.dart';

class GetxModel extends GetxController {
  RxList<UserModel> userList = <UserModel>[].obs;

  void addName(UserModel user) {
    userList.add(user);
  }

  void updateName(
       String id, String newName,String newAge) {
    final index = userList.indexWhere((name) => name.id == id);
      userList[index] = UserModel(age: int.parse(newAge), name: newName, id: id);
  }
  

  void deleteName(String id) {
    userList.removeWhere((name) => name.id == id);
  }
}

class UserModel {
  String name;
  int age;
  String id;
  UserModel({required this.age, required this.name, required this.id});
}
