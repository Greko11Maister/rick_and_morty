
import 'dart:developer';

import 'package:get/get.dart';
import 'package:rick_and_morty2/features/app/presentation/controllers/home_controller.dart';

class DetailController extends GetxController {
   HomeController _homeController;
   String periodicDetail = "";

   @override
  void onReady() {
    _homeController = Get.find();

    ever(_homeController.timePeriodic2, (v){
      log("En Home Controller esta cambiando el valor y lo estamos escuchando aqui en DetailController");
      this.periodicDetail =  v;
      update();
    });
    super.onReady();
  }
}