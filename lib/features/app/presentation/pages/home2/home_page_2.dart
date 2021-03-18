import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class HomePage2 extends StatelessWidget {
  static const routeName = "/home_page2";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: (){

            },
            icon: SvgPicture.asset("assets/rick_and_morty.svg", color: Colors.black, width: 25, height: 25,)),
        actions: [
          TextButton(onPressed: (){

          }, child: Text("Docs", style: TextStyle(color: Colors.black),)),
          TextButton(onPressed: (){

          }, child: Text("About", style: TextStyle(color: Colors.black))),
          IconButton(icon: _customIcon(icon: MdiIcons.heart), onPressed: (){

          })
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(top: 30),
          child: Text("The Rick and Morty API",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50,), textAlign: TextAlign.center,),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black87
            ),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i){
                  return Placeholder(fallbackHeight: 200,);
             // return CharacterCard();
            }),
          ),
        )
      ],),
    );
  }

Widget _customIcon({IconData icon}) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 152, 0, 2),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Icon(icon, size: 14, color: Colors.white,),);
}
}
