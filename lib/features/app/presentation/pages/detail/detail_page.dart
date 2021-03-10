import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty2/features/app/presentation/controllers/detail_controller.dart';

class DetailPage extends StatelessWidget {
  static const routeName = "/detail";
  DetailController _detailController;
  @override
  Widget build(BuildContext context) {
    _detailController = DetailController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
      ),
      body: Container(child: GetBuilder<DetailController>(
        init: _detailController,
        builder: (_){
        return Column(children: [
          Text("Variable local: ${_.periodicDetail}"),
        ],);
      },),),
    );
  }
}
