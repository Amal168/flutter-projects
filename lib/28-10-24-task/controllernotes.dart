import 'package:flutterproject/23-10-24-task/apicall.dart';
import 'package:flutterproject/23-10-24-task/model.dart';
import 'package:flutterproject/28-10-24-task/apinotes.dart';
import 'package:flutterproject/28-10-24-task/modelnote.dart';
import 'package:get/get.dart';

class DataapiController extends GetxController {
  var datanotesmodel = <Modelnote>[].obs;
  var notesloading = true.obs;
  getData() async {
        notesloading.value = true;
    try {

    var datanotes = await Apinotes().getnotesservice();

      if (datanotes != null) {
        datanotesmodel.value = datanotes;

      }
    } catch (e) {
      Get.snackbar("userId", "$e");
      notesloading.value = true;

    }finally{
       notesloading.value = false;
    }
   

  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
  
}
