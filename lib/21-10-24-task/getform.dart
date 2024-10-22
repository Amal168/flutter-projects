import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetxModel extends GetxController {
  RxList<UserModel> userList = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadUsers();
  }

  loadUsers() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    final name = pref.getStringList('savename');
    final age = pref.getStringList('saveage');
    final id = pref.getStringList('saveid');

    userList.value = List.generate(
      userList.length,
      (index) {
        return UserModel(
            age: int.parse(age![index]), name: name![index], id: id![index]);
      },
    );
  }

  Future<void> saveDetails() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final List<String> name = userList.map((user) => user.name).toList();
    final List<String> age =
        userList.map((user) => user.age.toString()).toList();
    final List<String> id = userList.map((user) => user.id.toString()).toList();
    pref.setStringList('savedname', name);
    pref.setStringList('savedage', age);
    pref.setStringList('saveid', id);
  }

  void addName(UserModel user) {
    userList.add(user);
    saveDetails();
  }

  void updateName(String id, String newName, String newAge) {
    final index = userList.indexWhere((name) => name.id == id);
    userList[index] = UserModel(age: int.parse(newAge), name: newName, id: id);
    saveDetails();
  }

  void deleteName(String id) {
    userList.removeWhere((name) => name.id == id);
    saveDetails();
  }
}

class UserModel {
  String name;
  int age;
  String id;
  UserModel({required this.age, required this.name, required this.id});
}
