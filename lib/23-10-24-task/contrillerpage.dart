import 'package:flutterproject/23-10-24-task/apicall.dart';
import 'package:flutterproject/23-10-24-task/model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  //1.create instance variable
  var datamodel = <Model>[].obs;
  var loading = true.obs;
  getData() async {
    //2.create instance of getservice
        loading.value = true;
    try {

    var data = await DataServices().getservises();
    //3.check condition
    // try {
      if (data != null) {
        datamodel.value = data;

      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loading.value = true;

    }finally{
       loading.value = false;
    }
   

  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
  
}
