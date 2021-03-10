import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty2/features/app/presentation/pages/detail/detail_page.dart';
import 'package:rick_and_morty2/features/app/presentation/pages/home/home_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Rick and Morty",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        DetailPage.routeName: (context) => DetailPage()
      },
    );
  }
}
