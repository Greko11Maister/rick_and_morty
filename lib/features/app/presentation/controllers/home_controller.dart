import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
    int counter = 0;
    String timePeriodic = "";

    Timer timer;


    @override
  void onInit() {
    _inicializadorDeTiempo();
    super.onInit();
  }

    void incrementar(){
      counter++;
      log("incrementar(): $counter");
      update();
    }

    void decrementar(){
      counter--;
      log("decrementar(): $counter");
      update();
    }

   void  _inicializadorDeTiempo(){
      this.timer = Timer.periodic(Duration(seconds: 30), (timer) {

        this.timePeriodic = DateTime.now().toIso8601String();

        log("timer: $timer // timePeriodic: ${this.timePeriodic}");

        update(["timer"]);
      });
    }
}