import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
    int counter = 0;
    String timePeriodic = "";
    RxString timePeriodic2 = "".obs;

    Timer timer;
    Timer timer2;


    @override
  void onInit() {
    _inicializadorDeTiempo();
    _inicializadorDeTiempoObservable();

    ever(this.timePeriodic2, (v){
      log("ejecunado peticion al backend: $v");
    });

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

   void  _inicializadorDeTiempoObservable(){
      this.timer2 = Timer.periodic(Duration(seconds: 20), (timer) {

        this.timePeriodic2.value = DateTime.now().toIso8601String();

        log("timer: $timer // timePeriodic: ${this.timePeriodic2.value}");

      });
    }
}