import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty2/features/app/presentation/controllers/home_controller.dart';
import 'package:rick_and_morty2/features/app/presentation/pages/home2/home_page_2.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  static const routeName = "/home";

  HomeController _homeController;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    _homeController = Get.find();
    log("1er build: StatelessWidget");
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola Mundo"),
        actions: [
          GetBuilder<HomeController>(
             // init: _homeController,
              builder: (_) {
                log("3er build: GetBuilder<HomeController>");
                return IconButton(icon: Text("${_.counter}"), onPressed: () {});
              })
        ],
      ),
      body: Column(
        children: [
          GetBuilder<HomeController>(
            init: _homeController,
            builder: (_) {
              log("2do build: GetBuilder<HomeController>");
              return Container(
                child: Text("Contador ${_.counter}"),
              );
            },
          ),
          Row(
            children: [
              TextButton(onPressed: _homeController.incrementar, child: Text("Incrementar")),
              TextButton(onPressed: _homeController.decrementar, child: Text("Decrementar")),
            ],
          ),
          GetBuilder<HomeController>(
              id: "timer",
              init: _homeController,
              builder: (_) {
                return Text(_.timePeriodic);
              }),
          Container(
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3), borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Uso de variables observables"),
              )),
          GetBuilder<HomeController>(
              init: _homeController,
              builder: (_){
                log("Observable build: GetBuilder<HomeController>");
            return Obx(()=> Text("Obs: ${_.timePeriodic2.value}"));
          }),

          ElevatedButton(onPressed: (){
            Get.toNamed("/detail");
          }, child: Text("Detail")),
          ElevatedButton(onPressed: (){
            Get.toNamed(HomePage2.routeName);
          }, child: Text("Home 2"))
        ],
      ),
    );
  }
}
