import 'package:flutterproject/21-10-24-task/addprofileget.dart';
import 'package:flutterproject/24-10-24-task/apiprofile.dart';
import 'package:flutterproject/24-10-24-task/modelprofile.dart';
import 'package:get/get.dart';

class Contrillerprofile extends GetxController {
  var datamodelprofile = <Modelprofile>[].obs;
  var load = true.obs;
  getData() async {
    load.value = true;
    try {
      var dataes = await Apiprofile().getservice();
      if (dataes != null) {
        datamodelprofile.value = dataes;
      }
    } catch (e) {
      Get.snackbar("image", "$e");
      print(e);
      load.value = true;
    } finally {
      load.value = false;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
